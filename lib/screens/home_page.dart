import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Добро пожаловать!'),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: 500,
          height: 800,
          color: Colors.lightGreen,
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () => Navigator.pop(context),
                child: Text('Вернуться назад!'),
              ),
              // GridView.count(
              //   crossAxisCount: 2, // 2 колонки
              //   children: [
              //     Container(color: Colors.red, height: 100),
              //     Container(color: Colors.blue, height: 100),
              //     Container(color: Colors.green, height: 100),
              //     Container(color: Colors.yellow, height: 100),
              //   ],
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
