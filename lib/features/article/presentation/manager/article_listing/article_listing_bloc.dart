
import 'package:core/core.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:design/design.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ny_times/features/article/application/article_facade.dart';

import '../../../data/models/article_model.dart';
import '../../../domain/params/articles_params.dart';

part 'article_listing_event.dart';

part 'article_listing_state.dart';

class ArticleListingBloc
    extends Bloc<ArticleListingEvent, ArticleListingState> {
  ArticleListingBloc(this._articleFacade)
      : super(const InitialArticleListingState()) {
    on<ArticleListingEvent>(
      (event, emit) async {
        if (event is ArticleListRequested) {
          await _onArticleListRequested(event, emit);
        }
      },
      transformer: restartable(),
    );
  }

  final ArticleFacade _articleFacade;

  Future<void> _onArticleListRequested(
    ArticleListRequested event,
    Emitter<ArticleListingState> emit,
  ) async {
    emit(const LoadingArticleListingState());

    final result = await _articleFacade.getArticles(ArticlesParams());

    result.when(
      success: (data) {
        emit(LoadArticleListingState(data));
      },
      failure: (error) {
        emit(FailureArticleListingState(error));
      },
    );
  }
}
