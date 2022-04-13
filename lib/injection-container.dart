import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'feature/data/data-sources/remote/news_api_service.dart';
import 'feature/data/repositories/articles-repository-impl.dart';
import 'feature/domain/domain.dart';
import 'feature/presentation/bloc/bloc.dart';

final injector = GetIt.instance;

Future<void> initializeDependencies() async {
  

  // Dio client
  injector.registerSingleton<Dio>(Dio());

  // Dependencies
  injector.registerSingleton<NewsApiService>(NewsApiService(injector()));

  // *
  injector.registerSingleton<ArticlesRepository>(
    ArticlesRepositoryImpl(injector()),
  );

  // UseCases
  injector.registerSingleton<GetArticlesUseCase>(GetArticlesUseCase(injector()));

  // Blocs
  injector.registerFactory<RemoteArticlesBloc>(
    () => RemoteArticlesBloc(injector()),
  );

}
