import 'package:air_rands/presentation/authentication_pages/login_page.dart';
import 'package:air_rands/presentation/on_boarding_screen/onboarding.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => const OnBoardingScreen(),
      '/Login': (context) => const LoginPage(),
    },
    theme: ThemeData(
        primaryColor: const Color(
          0xFFE30613,
        ),
        textButtonTheme: TextButtonThemeData(style: ButtonStyle())),
  ));
}
