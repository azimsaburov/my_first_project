import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/home_page.dart';
import 'package:flutter_application_1/screens/listview.dart';
import 'package:flutter_application_1/screens/next_page.dart';
import 'package:flutter_application_1/screens/splash.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
    Widget build(context) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/': (context)=> SplashScreen(),
          '/home': (context)=> HomePage(),
          '/list': (context)=> ViewList(),
          '/next': (context)=> NextPage(),
        }
      );
    }
  }
