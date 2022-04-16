import 'package:newsapp/core/core.dart';
import 'package:newsapp/feature/domain/domain.dart';

class GetSavedArticlesUseCase implements UseCase<List<ArticleEntity>, void> {
  final ArticlesRepository _articlesRepository;

  GetSavedArticlesUseCase(this._articlesRepository);

  @override
  Future<List<ArticleEntity>> call({void params}) {
    return _articlesRepository.getSavedArticles();
  }
}
