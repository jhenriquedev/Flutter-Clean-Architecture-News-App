part of 'remote-articles-bloc.dart';

abstract class RemoteArticlesState extends Equatable {
  final List<ArticleEntity> ? articles;
  final bool ? noMoreData;
  final DioError ? error;

  const RemoteArticlesState({this.articles, this.noMoreData, this.error});

  @override
  List<Object> get props => [articles!, noMoreData!, error ?? ""];
}

class RemoteArticlesLoading extends RemoteArticlesState {
  const RemoteArticlesLoading();
}

class RemoteArticlesDone extends RemoteArticlesState {
  const RemoteArticlesDone(List<ArticleEntity> article, {bool? noMoreData}) : super(articles: article, noMoreData: noMoreData);
}

class RemoteArticlesError extends RemoteArticlesState {
  const RemoteArticlesError(DioError error) : super(error: error);
}
