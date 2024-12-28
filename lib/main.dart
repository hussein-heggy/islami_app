import 'package:flutter/material.dart';
import 'package:islami/app_them.dart';
import 'package:islami/home_screen.dart';
import 'package:islami/intro/intro_screen.dart';
import 'package:islami/tabs/quran/sura_details_screen.dart';

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
        HomeScreen.routeName: (_) => HomeScreen(),
        SuraDetailsScreen.routeName: (_) => SuraDetailsScreen(),
        IntroScreen.routeName: (_) => IntroScreen(),
      },
      initialRoute: IntroScreen.routeName,
      theme: AppThem.lightTheme,
      darkTheme: AppThem.darkTheme,
      themeMode: ThemeMode.dark,
    );
  }
}
