import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/listview.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isImages = true;

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
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ViewList(),
                    ),
                  );
                },
                child: Text('Следующая страница'),
              ),
              Row(
                children: [
                  Expanded(
                      child: Container(
                          color: Colors.amber,
                          height:
                              10)), //Expanded заставляет каждый контейнер занять всю доступную ширину, деля её поровну между собой.
                  Expanded(child: Container(color: Colors.red, height: 10)),
                  Flexible(
                    flex: 1, // Этот элемент займет 1 часть пространства
                    child: Container(color: Colors.red, height: 100),
                  ),
                  Flexible(
                    flex: 2, // Этот элемент займет 2 части пространства
                    child: Container(color: Colors.green, height: 100),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Image.asset(
                isImages ? 'assets/images/anime1.jpg' : 'assets/images/d2.jpg',
                width: 500,
                height: 500,
              ),
              IconButton(
                icon: Icon(Icons.star, color: Colors.amber),
                splashRadius: 25,
                highlightColor: Colors.black,
                onPressed: () {
                  setState(() {
                    isImages = !isImages;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
