import 'package:flutter/material.dart';

class LightTheme {
  static final theme = ThemeData(
    primaryColor: const Color(0xFF055AA3),
    backgroundColor: const Color(0xFFD6DFE4),
    cardTheme: const CardTheme(
      color: Color(0xFFEDF4F8),
    ),
    textTheme: const TextTheme(
      headline1: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: Color(0xFF172026),
      ),
      headline2: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 14,
        fontWeight: FontWeight.w600,
        color: Color(0xFF172026),
      ),
      bodyText1: TextStyle(
        fontFamily: 'Montserrat',
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: Color(0xFF51565A),
      ),
      bodyText2: TextStyle(
        fontFamily: 'Montserrat',
        fontSize: 10,
        fontWeight: FontWeight.w400,
        color: Color(0xFF172026),
      ),
    ),
    primaryIconTheme: const IconThemeData(color: Colors.black),
    iconTheme: const IconThemeData(color: Colors.white),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      unselectedItemColor: Colors.black,
      selectedItemColor: Colors.black,
    ),
  );
}

class DarkTheme {
  static final theme = ThemeData.dark().copyWith(
    primaryColor: const Color(0xFF055AA3),
    highlightColor: const Color(0xFFEDF4F8),
    cardTheme: const CardTheme(
      color: Color(0xFF172026),
    ),
    backgroundColor: const Color(0xFF121517),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      unselectedItemColor: Colors.white,
      selectedItemColor: Colors.white,
    ),
    textTheme: const TextTheme(
      headline1: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: Color(0xFFEDF4F8),
      ),
      headline2: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 14,
        fontWeight: FontWeight.w600,
        color: Color(0xFFEDF4F8),
      ),
      bodyText1: TextStyle(
        fontFamily: 'Montserrat',
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: Color(0xFF51565A),
      ),
      bodyText2: TextStyle(
        fontFamily: 'Montserrat',
        fontSize: 10,
        fontWeight: FontWeight.w400,
        color: Color(0xFFEDF4F8),
      ),
    ),
    primaryIconTheme: const IconThemeData(
      color: Colors.white,
    ),
    iconTheme: const IconThemeData(
      color: Colors.black,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: const Color(0xFF055AA3),
      ),
    ),
    dividerTheme: DividerThemeData(
      color: Colors.white.withAlpha(100),
    ),
  );
}
