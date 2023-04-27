part of 'article_listing_bloc.dart';

@immutable
abstract class ArticleListingEvent {
  const ArticleListingEvent();
}

class ArticleListRequested extends ArticleListingEvent {
  const ArticleListRequested();
}
