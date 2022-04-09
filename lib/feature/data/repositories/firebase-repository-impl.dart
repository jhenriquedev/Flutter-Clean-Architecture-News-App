import 'package:newsapp/feature/data/data.dart';
import 'package:newsapp/feature/domain/domain.dart';

class FirebaseRepositoryImpl extends FirebaseRepository {
  final FirebaseRemoteDataSource remoteDataSource;
  
  FirebaseRepositoryImpl({
    required this.remoteDataSource
  });

  @override
  Future < void > signUp(UserEntity user) async => remoteDataSource.signUp(user);

}