

import 'package:newsapp/core/core.dart';
import 'package:newsapp/feature/domain/domain.dart';

class RemoveArticleUseCase implements UseCase<void, ArticleEntity> {
  final ArticlesRepository _articlesRepository;

  RemoveArticleUseCase(this._articlesRepository);

  @override
  Future<void> call({ArticleEntity ? params}) {
    return _articlesRepository.removeArticle(params!);
  }
}
