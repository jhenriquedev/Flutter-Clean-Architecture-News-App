import 'package:floor/floor.dart';
import 'package:newsapp/core/core.dart';
import 'package:newsapp/feature/domain/domain.dart';

@dao
abstract class ArticleDao {
  @Query('SELECT * FROM $kArticlesTableName')
  Future<List<ArticleEntity>> getAllArticles();

  @Insert(onConflict: OnConflictStrategy.replace)
  Future<void> insertArticle(ArticleEntity article);

  @delete
  Future<void> deleteArticle(ArticleEntity article);
}
