import 'package:newsapp/feature/domain/domain.dart';

class SingUpUseCase {

  final FirebaseRepository repository;

  SingUpUseCase({
    required this.repository
  });

  Future < void > call(UserEntity user) async {
    return repository.signUp(user);
  }
}