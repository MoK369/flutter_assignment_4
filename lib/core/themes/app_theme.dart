import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
      textTheme: const TextTheme(
          bodySmall: TextStyle(fontSize: 20, color: Colors.white),
          bodyMedium: TextStyle(fontSize: 25, color: Colors.white),
          bodyLarge: TextStyle(fontSize: 30, color: Colors.white)),
      appBarTheme: const AppBarTheme(
          color: Color(0xFF001f85),
          titleTextStyle: TextStyle(fontSize: 24, color: Colors.white)),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
              backgroundColor:
                  const MaterialStatePropertyAll(Color(0xFF104ad2)),
              shape: MaterialStatePropertyAll(ContinuousRectangleBorder(
                  borderRadius: BorderRadius.circular(30))))));
}
