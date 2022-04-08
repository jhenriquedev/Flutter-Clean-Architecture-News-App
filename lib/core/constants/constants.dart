import 'package:flutter/material.dart';
import 'package:newsapp/core/util/size/size-config.dart';


final headingStyle = TextStyle(
  fontSize: getProportionateScreenWidth(28),
  fontWeight: FontWeight.bold,
  color: Colors.black,
  height: 1.5,
);

const defaultDuration = Duration(milliseconds: 250);

// Form 
final RegExp emailValidatorRegExp = RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");

