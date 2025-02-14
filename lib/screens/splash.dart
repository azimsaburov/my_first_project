import 'package:flutter/material.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Привет!'),
            SizedBox(height: 20),
            IconButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/next');
              },
              icon: Icon(Icons.navigate_next),
              iconSize: 50,
            ),
          ],
        ),
      ),
    );
  }
}
