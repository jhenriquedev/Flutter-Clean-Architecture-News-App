import 'package:newsapp/feature/domain/domain.dart';

abstract class FirebaseRepository {
  Future < void > signUp(UserEntity user);
  Future < String > getCurrentUserId();
  Future < void > getCreateCurrentUser(UserEntity user);
}