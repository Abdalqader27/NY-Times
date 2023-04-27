import 'package:core/core.dart';

import '../../data/models/article_model.dart';

abstract class IArticleRepository {
  Future<ArticleModel> getArticles(Params params);
}
