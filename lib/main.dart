import 'package:flutter/material.dart';
import 'package:sallefy_pocket/views/login_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final ColorScheme colorScheme = new ColorScheme(
      primary: Color(0xff560027),
      primaryVariant: Color(0xff560027),
      secondary: Color(0xffff5252),
      secondaryVariant: Color(0xffff5252),
      surface: Color(0xffffffff),
      background: Color(0xff560027),
      error: Color(0xffffff00),
      onPrimary: Color(0xffffffff),
      onSecondary: Color(0xff000000),
      onSurface: Color(0xff000000),
      onBackground: Color(0xffffffff),
      onError: Color(0xff000000),
      brightness: Brightness.dark);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sallefy Pocket',
      theme: ThemeData(
        colorScheme: colorScheme,
        scaffoldBackgroundColor: colorScheme.background,
        fontFamily: 'Poppins',
        buttonTheme: ButtonThemeData(
            textTheme: ButtonTextTheme.normal,
            height: 45,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(28))),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
            foregroundColor: colorScheme.onSecondary),
      ),
      home: LoginScreen(),
    );
  }
}
