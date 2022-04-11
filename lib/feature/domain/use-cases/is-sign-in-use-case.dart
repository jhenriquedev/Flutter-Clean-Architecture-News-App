


import 'package:newsapp/feature/domain/domain.dart';

class IsSignInUseCase {

  final FirebaseRepository repository;

  IsSignInUseCase({required this.repository});

  Future<bool> call()async{
    return repository.isSignIn();
  }
}