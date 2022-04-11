import 'package:newsapp/feature/domain/domain.dart';

class GetCurrentUserIdUseCase {

  final FirebaseRepository repository;

  GetCurrentUserIdUseCase({ required this.repository });

  Future < String > call() async {
    return repository.getCurrentUserId();
  }
}