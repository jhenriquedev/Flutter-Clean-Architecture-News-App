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

// API
const String kBaseUrl = 'https://newsapi.org/v2';

const String kApiKey = 'ff957763c54c44d8b00e5e082bc76cb0';

// Database
const String kArticlesTableName = 'articles-table';

const String kDatabaseName = 'app-database.db';

