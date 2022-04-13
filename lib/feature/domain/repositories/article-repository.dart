

import 'package:newsapp/core/core.dart';
import 'package:newsapp/feature/domain/domain.dart';

abstract class ArticlesRepository {
  // API methods
  Future<DataState<List<ArticleEntity>>> getBreakingNewsArticles(ArticlesRequestParams params);
}
