import 'package:newsapp/feature/data/data.dart';
import 'package:newsapp/feature/domain/domain.dart';

class FirebaseRepositoryImpl extends FirebaseRepository {
  final FirebaseRemoteDataSource remoteDataSource;
  
  FirebaseRepositoryImpl({
    required this.remoteDataSource
  });

  @override
  Future<void> getCreateCurrentUser(UserEntity user) async => remoteDataSource.getCreateCurrentUser(user);

  @override
  Future<String> getCurrentUserId() async => remoteDataSource.getCurrentUserId();

  @override
  Future < void > signUp(UserEntity user) async => remoteDataSource.signUp(user);

    @override
  Future<bool> isSignIn() async =>
      remoteDataSource.isSignIn();

  @override
  Future<void> signIn(UserEntity user) async =>
      remoteDataSource.signIn(user);

  @override
  Future<void> signOut() async =>
      remoteDataSource.signOut();

}