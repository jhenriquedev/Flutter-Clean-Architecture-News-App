import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:newsapp/feature/data/remote/models/models.dart';
import 'package:newsapp/feature/domain/domain.dart';
import 'firebase-remote-data-source.dart';

class FirebaseRemoteDataSourceImpl implements FirebaseRemoteDataSource {
  final FirebaseAuth auth;
  final FirebaseFirestore firestore;

  FirebaseRemoteDataSourceImpl({
    required this.auth,
    required this.firestore
  });

  @override
  Future < void > getCreateCurrentUser(UserEntity user) async {
    final userCollectionRef = firestore.collection("users");
    final userId = await getCurrentUserId();
    userCollectionRef.doc(userId).get().then((value) {
      final newUser = UserModel(
        userId: userId,
        email: user.email,
        name: user.name,
      ).toDocument();
      if (!value.exists) {
        userCollectionRef.doc(userId).set(newUser);
      }
      return;
    });

  }

  @override
  Future < void > signUp(UserEntity user) async => auth.createUserWithEmailAndPassword(email: user.email!, password: user.password!);

  @override
  Future<String> getCurrentUserId() async => auth.currentUser!.uid;
}
