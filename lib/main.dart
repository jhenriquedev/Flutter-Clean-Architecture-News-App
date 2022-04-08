import 'package:flutter/material.dart';
import 'config/themes/app-themes.dart';
import 'feature/presentation/screens/signup/signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: theme(),
      home: Signup()
    );
  }
}
