import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:ny_times/common/const/const.dart';
import 'package:ny_times/features/article/data/data_sources/remote/article_remote.dart';
import 'package:ny_times/features/article/data/models/article_model.dart';
import 'package:ny_times/features/article/domain/params/articles_params.dart';

import '../../../../fixture/fixture_reader.dart';

class MockDioAdapter extends Mock implements HttpClientAdapter {}

class MockDio extends Mock implements Dio {}

void main() {
  late MockDio mockDio;
  late MockDioAdapter mockDioAdapter;

  late ArticleRemote articleRemoteDataSource;

  setUp(
    () {
      mockDio = MockDio();
      mockDioAdapter = MockDioAdapter();
      mockDio.httpClientAdapter = mockDioAdapter;
      mockDio.options = BaseOptions(baseUrl: APIRoutes.baseUrl);
      articleRemoteDataSource = ArticleRemote(mockDio);
    },
  );

  group(
    '[Remote] Get Articles',
    () {
      final articleResponseModel = ArticleModel.fromJson(
        json.decode(
          fixture('articles_response_model.json'),
        ),
      );

      void setUpMockDioSuccess() {
        final responsePayload = json.decode(
          fixture('articles_response_model.json'),
        );
        final response = Response(
          data: responsePayload,
          statusCode: 200,
          headers: Headers.fromMap(
            {
              Headers.contentTypeHeader: [Headers.jsonContentType],
            },
          ),
          requestOptions: RequestOptions(),
        );
        when(
          () => mockDio.get(
            any(),
            queryParameters: any(named: 'queryParameters'),
          ),
        ).thenAnswer((_) async => response);
      }

      test(
        'make sure there is a GET request to endpoint',
        () async {
          setUpMockDioSuccess();

          await articleRemoteDataSource.getArticles(ArticlesParams());
          verify(
            () => mockDio.get(
              '${APIRoutes.article.articles}all-sections/7.json',
            ),
          );
        },
      );

      test(
        'make sure to return the Articles object when the '
        'response code is successful from the endpoint',
        () async {
          setUpMockDioSuccess();

          final result = await articleRemoteDataSource.getArticles(
            ArticlesParams(),
          );

          expect(
            ArticleModel.fromJson(result.data),
            articleResponseModel,
          );
        },
      );

      test(
        'make sure to receive DioError when the response code fails from the endpoint',
        () async {
          // arrange
          final response = Response(
            data: 'Not Found',
            statusCode: 404,
            requestOptions: RequestOptions(),
          );
          when(() => mockDio.get(
                any(),
                queryParameters: any(named: 'queryParameters'),
              )).thenAnswer((_) async => response);

          final call = await articleRemoteDataSource.getArticles(
            ArticlesParams(
              section: 'all-sections',
              period: 78,
            ),
          );
          if (call is DioError) {
            expect(call.statusCode, 404);
          }
        },
      );
    },
  );
}
