import 'package:flutter/material.dart';

class AppThem {
  static const primary = Color(0xffE2BE7F);
  static const black = Color(0xff202020);
  static const white = Color(0xFFFFFFFF);
  static ThemeData lightTheme = ThemeData();
  static ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: black,
    appBarTheme: const AppBarTheme(
      backgroundColor: black,
      foregroundColor: primary,
      centerTitle: true,
      titleTextStyle:
          TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: primary),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      backgroundColor: primary,
      selectedItemColor: white,
      unselectedItemColor: black,
      showSelectedLabels: true,
      showUnselectedLabels: false,
    ),
    textTheme: const TextTheme(
      headlineSmall:
          TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: white),
      titleLarge:
          TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: white),
      titleMedium:
          TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: white),
      titleSmall:
          TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: white),
    ),
  );
}
