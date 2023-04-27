import 'package:ny_times/features/article/application/article_facade.dart';
import 'package:ny_times/features/article/data/data_sources/remote/article_remote.dart';
import 'package:ny_times/features/article/data/repositories/article_repository.dart';
import 'package:ny_times/features/article/domain/repositories/i_article_repository.dart';

import '../service_locator.dart';

Future<void> articleDependencies() async {
  sl.registerLazySingleton<ArticleRemote>(
    () => ArticleRemote(sl()),
  );
  sl.registerLazySingleton<IArticleRepository>(
    () => ArticleRepository(
      sl(),
    ),
  );
  sl.registerLazySingleton<ArticleFacade>(
    () => ArticleFacade(
      sl(),
    ),
  );
}
