import 'package:flutter/material.dart';

final lightTheme=ThemeData(
  primarySwatch: Colors.teal,
  canvasColor: Colors.white,
  appBarTheme:const AppBarTheme(
    centerTitle: true,
    titleTextStyle: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: 20.0,
    ),
  ) ,
  iconTheme:const IconThemeData(
      color: Colors.white,
      size: 100.0
  ),
  textTheme:const TextTheme(
    headline2:TextStyle(
      color: Colors.black,
      fontSize: 30.0,
      fontWeight: FontWeight.bold,
    ),
    headline1:TextStyle(
      color: Colors.white,
      fontSize: 20.0,
      fontWeight: FontWeight.bold,
    ),
    headline3:TextStyle(
      color: Colors.black,
      fontSize: 30.0,
      fontWeight: FontWeight.bold,
    ),
  ),
);
final darkTheme=ThemeData(
  primarySwatch: Colors.teal,
  canvasColor: Colors.black,
  appBarTheme:const AppBarTheme(
    centerTitle: true,
    titleTextStyle: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.bold,
      fontSize: 20.0,
    ),
  ) ,
  iconTheme:const IconThemeData(
      color: Colors.white,
      size: 100.0
  ),
  textTheme:const TextTheme(
    headline2:TextStyle(
      color: Colors.black,
      fontSize: 30.0,
      fontWeight: FontWeight.bold,
    ),
    headline1:TextStyle(
      color: Colors.black,
      fontSize: 20.0,
      fontWeight: FontWeight.bold,
    ),
    headline3:TextStyle(
      color: Colors.white,
      fontSize: 30.0,
      fontWeight: FontWeight.bold,
    ),
  ),
);
