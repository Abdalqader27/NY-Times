import 'package:core/core.dart';
import 'package:ny_times/features/article/data/models/article_model.dart';

import '../domain/params/articles_params.dart';
import '../domain/repositories/i_article_repository.dart';

class ArticleFacade {
  final IArticleRepository _articleRepository;

  ArticleFacade(this._articleRepository);

  Future<ApiResult<ArticleModel>> getArticles(ArticlesParams params) async {
    return toApiResult(() => _articleRepository.getArticles(params));
  }
}
