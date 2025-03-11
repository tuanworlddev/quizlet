
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

final ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  scaffoldBackgroundColor: HexColor('#03045E'),
  fontFamily: 'Inter',
  appBarTheme: AppBarTheme(
    backgroundColor: HexColor('#03045E'),
  ),
  colorScheme: ColorScheme.light(
    primary: Colors.white,
    secondary: Colors.grey.shade200,
    onSecondary: Colors.black,
  ),
  textTheme: TextTheme(
    bodySmall: TextStyle(color: Colors.white),
    bodyMedium: TextStyle(color: Colors.white),
    bodyLarge: TextStyle(color: Colors.white),
  ),

);

final ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  scaffoldBackgroundColor: HexColor('#03045E'),
  fontFamily: 'Inter',
  appBarTheme: AppBarTheme(
    backgroundColor: HexColor('#03045E'),
  ),
  colorScheme: ColorScheme.dark(
    primary: Colors.white,
    secondary: Colors.grey.shade200,
    onSecondary: Colors.black,
  ),
  textTheme: TextTheme(
    bodySmall: TextStyle(color: Colors.white),
    bodyMedium: TextStyle(color: Colors.white),
    bodyLarge: TextStyle(color: Colors.white),
  ),
);