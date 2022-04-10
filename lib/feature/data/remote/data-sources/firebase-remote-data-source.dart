



import 'package:newsapp/feature/domain/domain.dart';

abstract class FirebaseRemoteDataSource{
  Future<void> signUp(UserEntity user);
  Future<String> getCurrentUserId();
  Future<void> getCreateCurrentUser(UserEntity user);
}
