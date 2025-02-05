import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/splash.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
    Widget build(context) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
      );
    }
  }
