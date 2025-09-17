import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3)).whenComplete((){
      Navigator.pushReplacement(context, CupertinoPageRoute(builder: (context)=>HomeScreen()));
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child: Text('Food app',style: TextStyle(
          fontSize: 35,
          fontWeight: FontWeight.bold
        ),),
      ),
    );
  }
}
