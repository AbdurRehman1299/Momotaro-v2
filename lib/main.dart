import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Momotaro V2',
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}