import 'package:core/core.dart';
import 'package:dio/dio.dart';

import '../../../../../common/const/const.dart';

class ArticleRemote {
  ArticleRemote(this._dio);

  final Dio _dio;

  Future<Response> getArticles(Params params) async {
    final map = params.toMap();
    final section = map['section'];
    final period = map['period'];
    final response = await _dio.get(
      '${APIRoutes.article.articles}$section/$period.json',
    );
    return response;
  }
}
