import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/next_page.dart';
//import 'package:flutter_application_1/screens/home_page.dart';


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
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NextPage()), //здесь должен быть HomePage()
                ); 
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
