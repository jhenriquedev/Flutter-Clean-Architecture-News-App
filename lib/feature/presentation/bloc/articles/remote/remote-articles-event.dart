part of 'remote-articles-bloc.dart';

abstract class RemoteArticlesEvent extends Equatable {
  const RemoteArticlesEvent();

  @override
  List<Object> get props => [];
}

class GetArticles extends RemoteArticlesEvent {
  const GetArticles();
}
