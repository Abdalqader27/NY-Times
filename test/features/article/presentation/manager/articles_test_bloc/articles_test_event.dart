import 'package:flutter_test/flutter_test.dart';
import 'package:ny_times/features/article/presentation/manager/article_listing/article_listing_bloc.dart';

void main() {
  group(
    'ArticleListRequested',
    () {
      test(
        'make sure the props value is [category]',
        () async {
          const ArticleListingEvent articleListingEvent =
              ArticleListRequested();

          expect(
            articleListingEvent,
            isA<ArticleListingEvent>(),
          );
        },
      );
    },
  );
}
