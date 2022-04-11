


import 'package:newsapp/feature/domain/domain.dart';

class SignOutUseCase {

  final FirebaseRepository repository;

  SignOutUseCase({required this.repository});

  Future<void> call()async{
    return repository.signOut();
  }
}