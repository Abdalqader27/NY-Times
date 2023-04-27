import 'dart:convert';

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ny_times/core/injections/service_locator.dart';
import 'package:ny_times/features/article/presentation/manager/article_listing/article_listing_bloc.dart';

import 'articles_test_event.dart' as articles_test_event;
import 'articles_test_state.dart' as articles_test_state;
void main() {
  articles_test_event.main();
  articles_test_state.main();

  group(
    'Article Listing Bloc',
    () {
      blocTest(
        'emits [Init ArticleListingState] when nothing is added',
        build: () => ArticleListingBloc(sl()),
        expect: () => [],
      );

      blocTest(
        'emits [Loading ArticleListingState] when Event is added',
        build: () => ArticleListingBloc(sl()),
        act: (bloc) => bloc.add(const ArticleListRequested()),
        expect: () => [const LoadingArticleListingState()],
      );

      blocTest(
        'emits [Loaded ArticleListingState] when Event is added',
        build: () => ArticleListingBloc(sl()),
        act: (bloc) => bloc.add(const ArticleListRequested()),
        wait: const Duration(milliseconds: 2000),
        skip: 1,
        expect: () => [isA<LoadArticleListingState>()],
      );
    },
  );
}
