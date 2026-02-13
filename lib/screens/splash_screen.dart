import 'package:flutter/material.dart';
import 'dart:async';
import 'welcome.dart';

class SplashScreen extends StatefulWidget {

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(
      Duration(seconds: 3), () {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => WelcomePage()),
        );
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'images/main_logo.png',
              height: 100,
              fit: BoxFit.contain,
            ),
            // SizedBox(height: 30,),
            Text("Momotaro UI Kit", style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.black87),),
          ],
        ),
      ),
    );
  }
}