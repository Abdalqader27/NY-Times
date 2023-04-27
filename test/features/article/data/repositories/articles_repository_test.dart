import 'dart:convert';

import 'package:core/core.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:ny_times/core/injections/service_locator.dart';
import 'package:ny_times/features/article/data/data_sources/remote/article_remote.dart';
import 'package:ny_times/features/article/data/models/article_model.dart';
import 'package:ny_times/features/article/data/repositories/article_repository.dart';
import 'package:ny_times/features/article/domain/params/articles_params.dart';
import 'package:ny_times/features/article/domain/repositories/i_article_repository.dart';

import '../../../../fixture/fixture_reader.dart';
import 'package:mockito/annotations.dart';

import 'articles_repository_test.mocks.dart';

@GenerateMocks([ArticleRemote, ArticleRepository])
void main() {
  late ArticleRemote mockArticleRemoteDataSource;
  late ArticleRepository mockArticleRepositoryImpl;

  setUp(
    () {
      mockArticleRemoteDataSource = MockArticleRemote();
      mockArticleRepositoryImpl = MockArticleRepository();
    },
  );

  group(
    '[Repo] get Articles',
    () {
      final tArticleResponseModel = ArticleModel.fromJson(
        json.decode(
          fixture('articles_response_model.json'),
        ),
      );

      test(
        'make sure to return the value of the tArticleResponseModel object when '
        'Articles RemoteDataSource successfully receives a successful data response from the endpoint',
        () async {
          when(mockArticleRepositoryImpl.getArticles(ArticlesParams()))
              .thenAnswer(
            (_) async => tArticleResponseModel,
          );

          final result = await sl<IArticleRepository>().getArticles(
            ArticlesParams(),
          );

          expect(result, isA<ArticleModel>());
          expect(result.status, result.status);
        },
      );

      test(
        'make sure to return the ServerFailure object when ArticlesRemoteDataSource receives a failure '
        'data response from the endpoint',
        () async {
          when(
            mockArticleRemoteDataSource.getArticles(
              ArticlesParams(period: -1),
            ),
          ).thenThrow(
            DioError(
              response: Response(
                data: null,
                statusCode: 404,
                requestOptions: RequestOptions(),
              ),
              error: 'testError',
              message: 'testMessage',
              requestOptions: RequestOptions(),
            ),
          );

          try {
            await sl<IArticleRepository>().getArticles(
              ArticlesParams(period: -1, section: 'no-sections'),
            );
          } catch (e) {
            expect(
              e,
              isA<AppNetworkResponseException>(),
            );
          }
        },
      );
    },
  );
}
