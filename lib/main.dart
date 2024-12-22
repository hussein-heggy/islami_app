import 'package:flutter/material.dart';
import 'package:islami/app_them.dart';
import 'package:islami/home_screen.dart';

void main() {
  runApp(const IslamiApp());
}

class IslamiApp extends StatelessWidget {
  const IslamiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        HomeScreen.homeScreen: (_) => HomeScreen(),
      },
      initialRoute: HomeScreen.homeScreen,
      theme: AppThem.lightTheme,
      darkTheme: AppThem.darkTheme,
      themeMode: ThemeMode.dark,
    );
  }
}
