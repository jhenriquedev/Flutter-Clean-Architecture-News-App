

import 'package:newsapp/core/core.dart';
import 'package:newsapp/feature/domain/domain.dart';

class SaveArticleUseCase implements UseCase<void, ArticleEntity> {
  final ArticlesRepository _articlesRepository;

  SaveArticleUseCase(this._articlesRepository);

  @override
  Future<void> call({ArticleEntity? params}) {
    return _articlesRepository.saveArticle(params!);
  }
}
