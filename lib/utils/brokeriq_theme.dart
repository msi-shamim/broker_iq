import 'package:flutter/material.dart';

class Brokeriq {
  static ThemeData get lightTheme{
    return ThemeData(
      primaryColor: Colors.yellow,
      accentColor: Colors.green,
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: ButtonStyle(
            side:
            MaterialStateProperty.all(BorderSide(color: Colors.yellow))),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.yellow)),
      ),
      inputDecorationTheme: InputDecorationTheme(
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.green),
        ),
        labelStyle: TextStyle(
          color: Colors.grey
        ),
      )
    );
  }
}