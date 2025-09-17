import 'package:flutter/material.dart';
import 'package:food_app/commons/app_routes/app_routes.dart';
import 'package:food_app/ui_screen/onboarding_screens/on_boarding_screen1.dart';
import 'package:food_app/ui_screen/onboarding_screens/on_bording_screen2.dart';
import 'package:food_app/ui_screen/user_auth_screens/sign_in_screen.dart';
import 'package:food_app/ui_screen/user_auth_screens/sign_up_screen.dart';
import 'ui_screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      routes: {
        AppRoutes.splashScreen: (context) => SplashScreen(),
        AppRoutes.onBoardingScreen1: (context) => OnBoardingScreen1(),
        AppRoutes.onBoardingScreen2: (context) => OnBoardingScreen2(),
        AppRoutes.signUpScreen: (context) => SignUpScreen(),
        AppRoutes.signInScreen: (context) => SignInScreen(),
      },
    );
  }
}
