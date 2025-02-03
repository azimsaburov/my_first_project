import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/home_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //   appBar: AppBar(
      //     title: Text('Добро пожаловать!'),
      //   ),
      body: Center(
        child: Container(
          color: Colors.lightBlueAccent,
          child: Column(
            children: [
              Text('Привет!'),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  ); 
                },
                child: Text('Переход на следующую страницу'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
