
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

final ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  scaffoldBackgroundColor: HexColor('#51A7BF'),
  fontFamily: 'Inter',
  appBarTheme: AppBarTheme(
    backgroundColor: HexColor('#51A7BF'),
  ),
  colorScheme: ColorScheme.light(
    primary: HexColor('#DAF4FF'),
    secondary: Colors.grey.shade200,
    onSecondary: Colors.black,
  ),
  textTheme: TextTheme(
    bodySmall: TextStyle(color: HexColor('#DAF4FF')),
    bodyMedium: TextStyle(color: HexColor('#DAF4FF')),
    bodyLarge: TextStyle(color: HexColor('#DAF4FF')),
  ),

);

final ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  scaffoldBackgroundColor: HexColor('#51A7BF'),
  fontFamily: 'Inter',
  appBarTheme: AppBarTheme(
    backgroundColor: HexColor('#51A7BF'),
  ),
  colorScheme: ColorScheme.dark(
    primary: HexColor('#DAF4FF'),
    secondary: Colors.grey.shade200,
    onSecondary: Colors.black,
  ),
  textTheme: TextTheme(
    bodySmall: TextStyle(color: HexColor('#DAF4FF')),
    bodyMedium: TextStyle(color: HexColor('#DAF4FF')),
    bodyLarge: TextStyle(color: HexColor('#DAF4FF')),
  ),
);