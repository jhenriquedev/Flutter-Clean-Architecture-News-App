



import 'package:newsapp/feature/domain/domain.dart';

abstract class FirebaseRemoteDataSource{
  Future<bool> isSignIn();
  Future<void> signIn(UserEntity user);
  Future<void> signUp(UserEntity user);
  Future<void> signOut();
  Future<String> getCurrentUserId();
  Future<void> getCreateCurrentUser(UserEntity user);
}
