

import 'package:newsapp/core/core.dart';
import 'package:newsapp/feature/domain/domain.dart';

abstract class ArticlesRepository {
  // API methods
  Future<DataState<List<ArticleEntity>>> getBreakingNewsArticles(ArticlesRequestParams params);

  // Database methods
  Future<List<ArticleEntity>> getSavedArticles();

  Future<void> saveArticle(ArticleEntity article);

  Future<void> removeArticle(ArticleEntity article);
}
