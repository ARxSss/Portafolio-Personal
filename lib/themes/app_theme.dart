import 'package:flutter/material.dart';

class AppTheme {
  static final ThemeData davidTheme = ThemeData.dark().copyWith(
    primaryColor: Colors.yellowAccent,
    scaffoldBackgroundColor: const Color(0xFF121212),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.yellowAccent,
      foregroundColor: Colors.black,
    ),
    iconTheme: const IconThemeData(color: Colors.yellowAccent),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Colors.yellowAccent,
      foregroundColor: Colors.black,
    ),
    inputDecorationTheme: _buildInputTheme(Colors.yellowAccent),
  );

  static final ThemeData lucyTheme = ThemeData.dark().copyWith(
    primaryColor: Colors.purpleAccent,
    scaffoldBackgroundColor: const Color(0xFF050505),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.deepPurple,
      foregroundColor: Colors.white,
    ),
    iconTheme: const IconThemeData(color: Colors.purpleAccent),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Colors.purpleAccent,
      foregroundColor: Colors.white,
    ),
    inputDecorationTheme: _buildInputTheme(Colors.purpleAccent),
  );

  static final ThemeData rebeccaTheme = ThemeData.dark().copyWith(
    primaryColor: Colors.tealAccent,
    scaffoldBackgroundColor: const Color(0xFF1A1A1A),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.teal,
      foregroundColor: Colors.white,
    ),
    iconTheme: const IconThemeData(color: Colors.tealAccent),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Colors.redAccent,
      foregroundColor: Colors.white,
    ),
    inputDecorationTheme: _buildInputTheme(Colors.redAccent),
  );

  static InputDecorationTheme _buildInputTheme(Color color) {
    return InputDecorationTheme(
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: color, width: 2),
      ),
      enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: color)),
      labelStyle: TextStyle(color: color),
    );
  }
}
