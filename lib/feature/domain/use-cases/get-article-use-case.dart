import 'package:newsapp/core/core.dart';
import 'package:newsapp/feature/domain/domain.dart';

class GetArticlesUseCase implements UseCase < DataState < List < ArticleEntity >> , ArticlesRequestParams > {
  final ArticlesRepository articlesRepository;

  GetArticlesUseCase(this.articlesRepository);

  @override
  Future < DataState < List < ArticleEntity >>> call({ ArticlesRequestParams ? params }) {
    return articlesRepository.getBreakingNewsArticles(params!);
  }
}
