import 'dart:async';

import 'package:design/design.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart' as flutter_test;
import 'package:integration_test/integration_test.dart';
import 'package:ny_times/core/injections/service_locator.dart';
import 'package:path_provider/path_provider.dart';

import 'package:uuid/uuid.dart';

@visibleForTesting
abstract class TestHelper {
  TestHelper._();

  static Future<void> setUp() async {
    sl.allowReassignment = true;
    await inject();
    // await _deleteCacheDir();
    // await _deleteAppDir();
    sl.registerSingleton(TestDioInterceptor());
    sl<Dio>().interceptors.add(sl<TestDioInterceptor>());
  }

  static Future<void> tearDown() async {
    await sl.reset();
  }

  static Future<void> setUpAll() async {
    kTestMode = true;
  }

  static Future<void> setUpForFlutterRun() async {
    IntegrationTestWidgetsFlutterBinding.ensureInitialized();

    flutter_test.setUp(() async {
      await TestHelper.setUp();
    });
    flutter_test.setUpAll(() async {
      await TestHelper.setUpAll();
    });
    flutter_test.tearDown(() async {
      await TestHelper.tearDown();
    });
  }
}

// this will delete cache
Future<void> _deleteCacheDir() async {
  final cacheDir = await getTemporaryDirectory();
  if (cacheDir.existsSync()) {
    cacheDir.deleteSync(recursive: true);
  }
}

// this will delete app's storage
Future<void> _deleteAppDir() async {
  final appDir = await getApplicationDocumentsDirectory();
  if (appDir.existsSync()) {
    appDir.deleteSync(recursive: true);
  }
}

@visibleForTesting
Future<void> awaitHttpRequests() async {
  await sl<TestDioInterceptor>().waitAll();
}

@visibleForTesting
class TestDioInterceptor extends Interceptor {
  TestDioInterceptor();

  final Map<String, Completer> _completers = {};

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.setId();
    _completers[options.id] = Completer();
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    _completeRequest(response.requestOptions.id);
    super.onResponse(response, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) async {
    _completeRequest(err.requestOptions.id);
    _printRequestOptions(err.requestOptions);
    debugPrint('*************************');
    debugPrint('*** DioError ***:');
    debugPrint('$err');
    if (err.response != null) {
      _printResponse(err.response!);
    }
    debugPrint('');

    handler.next(err);
  }

  void _completeRequest(String id) {
    if (_completers.containsKey(id)) {
      _completers[id]!.complete();
      _completers.remove(id);
    }
  }

  Future<void> waitAll() {
    return Future.wait(_completers.values.map((e) => e.future));
  }

  void _printRequestOptions(RequestOptions requestOptions) {
    debugPrint('*** Request ***');
    _printKV('uri', Uri.decodeFull(requestOptions.uri.toString()));
    debugPrint('headers:');
    requestOptions.headers.forEach((key, v) => _printKV(' $key', v));
    if (requestOptions.data != null) {
      debugPrint('data:');
      _printAll(requestOptions.data.toString());
    }
    debugPrint('');
  }

  void _printResponse(Response response) {
    _printKV('statusCode', response.statusCode);
    if (response.isRedirect == true) {
      _printKV('redirect', response.realUri);
    }

    debugPrint('headers:');
    response.headers.forEach((key, v) => _printKV(' $key', v.join('\r\n\t')));
    debugPrint('Response Text:');
    _printAll(response.toString());
    debugPrint('');
  }

  void _printKV(String key, Object? v) {
    debugPrint('$key: $v');
  }

  void _printAll(msg) {
    msg.toString().split('\n').forEach(debugPrint);
  }
}

extension on RequestOptions {
  void setId() {
    extra['id'] = const Uuid().v1();
  }

  String get id => extra['id'] as String;
}
