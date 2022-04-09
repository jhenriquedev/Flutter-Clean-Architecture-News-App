



import 'package:newsapp/feature/domain/domain.dart';

abstract class FirebaseRemoteDataSource{
  Future<void> signUp(UserEntity user);
}
