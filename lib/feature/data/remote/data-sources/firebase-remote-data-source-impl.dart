import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:newsapp/feature/domain/domain.dart';
import 'firebase-remote-data-source.dart';

class FirebaseRemoteDataSourceImpl implements FirebaseRemoteDataSource {
  final FirebaseAuth auth;
  final FirebaseFirestore firestore;

  FirebaseRemoteDataSourceImpl({required this.auth, required this.firestore});

  @override
  Future<void> signUp(UserEntity user) async => auth.createUserWithEmailAndPassword(email: user.email!, password: user.password!);
}
