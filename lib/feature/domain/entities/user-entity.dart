import 'package:equatable/equatable.dart';

class UserEntity extends Equatable {
  final String ? name;
  final String ? email;
  final String ? userId;
  final String ? password;

   const UserEntity({
    this.name,
    this.email,
    this.userId,
    this.password,
  });

  @override
  List < Object ? > get props => [
    name,
    email,
    userId,
    password,
  ];
}
