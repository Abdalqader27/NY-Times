part of 'article_listing_bloc.dart';

abstract class ArticleListingState extends Equatable {
  final PageState<ArticleModel> pageState;

  const ArticleListingState({
    required this.pageState,
  });
}

class InitialArticleListingState extends ArticleListingState {
  const InitialArticleListingState()
      : super(
          pageState: const PageState<ArticleModel>.init(),
        );

  @override
  List<Object?> get props => [pageState];
}

class LoadingArticleListingState extends ArticleListingState {
  const LoadingArticleListingState()
      : super(
          pageState: const PageState<ArticleModel>.loading(),
        );

  @override
  List<Object?> get props => [pageState];
}

class FailureArticleListingState extends ArticleListingState {
  final AppException<dynamic> exception;

  FailureArticleListingState(this.exception)
      : super(
          pageState: PageState<ArticleModel>.failure(exception: exception),
        );

  @override
  List<Object?> get props => [pageState];
}

class LoadArticleListingState extends ArticleListingState {
  final ArticleModel articleModel;

  LoadArticleListingState(this.articleModel)
      : super(
          pageState: PageState<ArticleModel>.success(data: articleModel),
        );

  @override
  List<Object?> get props => [pageState];
}
