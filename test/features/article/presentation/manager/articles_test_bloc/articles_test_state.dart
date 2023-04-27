import 'dart:convert';

import 'package:core/core.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ny_times/features/article/data/models/article_model.dart';
import 'package:ny_times/features/article/presentation/manager/article_listing/article_listing_bloc.dart';

import '../../../../../fixture/fixture_reader.dart';

void main() {
  group(
    'InitialArticlesState',
    () {
      test(
        'make sure the pageState value is PageState.init()',
        () async {
          expect(
            const InitialArticleListingState().pageState,
            const PageState<ArticleModel>.init(),
          );
        },
      );
    },
  );

  group(
    'LoadingArticlesState',
    () {
      test(
        'make sure the pageState value is Loading',
        () async {
          expect(
            const LoadingArticleListingState().pageState,
            const PageState<ArticleModel>.loading(),
          );
        },
      );
    },
  );

  group(
    'LoadedArticlesState',
    () {
      final tArticleResponseModel = ArticleModel.fromJson(
        json.decode(
          fixture('articles_response_model.json'),
        ),
      );
      final tLoadedArticlesState =
          LoadArticleListingState(tArticleResponseModel);

      test(
        'make sure the tArticleResponseModel value is pageState.data',
        () async {
          expect(
            tArticleResponseModel,
            tLoadedArticlesState.pageState.data,
          );
        },
      );
    },
  );

  group(
    'FailureTopHeadlinesNewsState',
    () {
      const tErrorMessage = 'testErrorMessage';
      final tFailureArticlesState =FailureArticleListingState(
        AppException(
          exception: Exception(tErrorMessage),
          message: tErrorMessage,
        ),
      );

      test(
        'make sure the tFailureArticlesState value is pageState.exception',
        () async {
          expect(
            tErrorMessage,
            tFailureArticlesState.pageState.exception.message,
          );
        },
      );
    },
  );
}
