import 'package:core/core.dart';
import 'package:core/src/remote/params.dart';
import 'package:ny_times/features/article/data/models/article_model.dart';
import 'package:ny_times/features/article/domain/repositories/i_article_repository.dart';

import '../data_sources/remote/article_remote.dart';

class ArticleRepository extends IArticleRepository {
  ArticleRepository(this._articleRemote);

  final ArticleRemote _articleRemote;

  @override
  Future<ArticleModel> getArticles(Params params) {
    return throwAppException(
      () async {
        final response = await _articleRemote.getArticles(params);
        return ArticleModel.fromJson(response.data);
      },
    );
  }
}
