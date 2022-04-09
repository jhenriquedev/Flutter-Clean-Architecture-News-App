import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:newsapp/feature/domain/domain.dart';

class UserModel extends UserEntity {
  
  const UserModel({
    final String ? name,
    final String ? email,
    final String ? userId,
    final String ? status,
    final String ? password,
  }): super(
    userId: userId,
    name: name,
    email: email,
    password: password,
  );

  factory UserModel.fromSnapshot(DocumentSnapshot documentSnapshot) {
    return UserModel(
      status: documentSnapshot.get('status'),
      name: documentSnapshot.get('name'),
      userId: documentSnapshot.get('userId'),
      email: documentSnapshot.get('email'),
    );
  }

  Map < String, dynamic > toDocument() {
    return {
      "userId": userId,
      "email": email,
      "name": name
    };
  }

}