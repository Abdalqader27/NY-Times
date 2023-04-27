import 'dart:async';

import 'package:flutter_test/flutter_test.dart';

import 'test_tools/helper.dart';

Future<void> testExecutable(FutureOr<void> Function() testMain) async {
  setUpAll(() async {
    await TestHelper.setUpAll();
  });

  setUp(() async {
    await TestHelper.setUp();
  });

  tearDown(() async {
    await TestHelper.tearDown();
  });

  await testMain();
}
