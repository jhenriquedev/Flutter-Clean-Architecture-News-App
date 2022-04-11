import 'package:newsapp/feature/domain/domain.dart';

abstract class FirebaseRepository {
  Future<bool> isSignIn();
  Future<void> signIn(UserEntity user);
  Future<void> signOut();
  Future < void > signUp(UserEntity user);
  Future < String > getCurrentUserId();
  Future < void > getCreateCurrentUser(UserEntity user);
}