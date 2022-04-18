import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:newsapp/core/core.dart';
import 'feature/data/data-sources/local/app_database.dart';
import 'feature/data/data-sources/remote/news_api_service.dart';
import 'feature/data/repositories/articles-repository-impl.dart';
import 'feature/domain/domain.dart';
import 'feature/presentation/bloc/bloc.dart';

final injector = GetIt.instance;

Future<void> initializeDependencies() async {
  
  // *
  final database = await $FloorAppDatabase.databaseBuilder(kDatabaseName).build();
  injector.registerSingleton<AppDatabase>(database);

  // Dio client
  injector.registerSingleton<Dio>(Dio());

  // Dependencies
  injector.registerSingleton<NewsApiService>(NewsApiService(injector()));

  // *
  injector.registerSingleton<ArticlesRepository>(
    ArticlesRepositoryImpl(injector(),injector()),
  );

  // UseCases
  injector.registerSingleton<GetArticlesUseCase>(GetArticlesUseCase(injector()));

    // *
  injector.registerSingleton<GetSavedArticlesUseCase>(GetSavedArticlesUseCase(injector()));
  injector.registerSingleton<SaveArticleUseCase>(SaveArticleUseCase(injector()));
  injector.registerSingleton<RemoveArticleUseCase>(RemoveArticleUseCase(injector()));

  // Blocs
  injector.registerFactory<RemoteArticlesBloc>(
    () => RemoteArticlesBloc(injector()),
  );

  // *
  injector.registerFactory<LocalArticlesBloc>(
    () => LocalArticlesBloc(injector(), injector(), injector()),
  );

}
