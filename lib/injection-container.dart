import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';

import 'feature/data/data.dart';
import 'feature/domain/domain.dart';
import 'feature/presentation/cubit/cubit.dart';

GetIt sl = GetIt.instance;

Future < void > init() async {

  //Cubit/Bloc
  sl.registerFactory < AuthCubit > (() => AuthCubit( isSignInUseCase: sl.call(), signOutUseCase: sl.call(), getCurrentUidUseCase: sl.call()));
  sl.registerFactory < UserCubit > (() => UserCubit( getCreateCurrentUserUseCase: sl.call(),signUpUseCase: sl.call(),));


  //useCase
  sl.registerLazySingleton < GetCreateCurrentUserUsecase > ( () => GetCreateCurrentUserUsecase(repository: sl.call()));
  sl.registerLazySingleton < GetCurrentUserIdUseCase > (() => GetCurrentUserIdUseCase(repository: sl.call()));
  sl.registerLazySingleton < IsSignInUseCase > (() => IsSignInUseCase(repository: sl.call()));
  sl.registerLazySingleton < SignInUseCase > (() => SignInUseCase(repository: sl.call()));
  sl.registerLazySingleton < SignOutUseCase > (() => SignOutUseCase(repository: sl.call()));
  sl.registerLazySingleton < SingUpUseCase > (() => SingUpUseCase(repository: sl.call()));

  //repository
  sl.registerLazySingleton < FirebaseRepository > (() => FirebaseRepositoryImpl(remoteDataSource: sl.call()));

  //data source
  sl.registerLazySingleton < FirebaseRemoteDataSource > (() => FirebaseRemoteDataSourceImpl(auth: sl.call(), firestore: sl.call()));

  //External
  final auth = FirebaseAuth.instance;
  final fireStore = FirebaseFirestore.instance;

  sl.registerLazySingleton(() => auth);
  sl.registerLazySingleton(() => fireStore);
}
