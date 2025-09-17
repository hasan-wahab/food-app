import 'package:flutter/material.dart';
import 'package:food_app/app_routes/app_routes.dart';
import 'package:food_app/app_view/home_screen.dart';
import 'app_view/splash_screen.dart';

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
        AppRoutes().splashScreen:(context)=>SplashScreen(),
        AppRoutes().homeScreen:(context)=>HomeScreen(),
        
    },
    );
  }
}
