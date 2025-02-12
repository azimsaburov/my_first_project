import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/next_page.dart';

class ViewList extends StatefulWidget {
  const ViewList({super.key});

  @override
  State<ViewList> createState() => _ViewListState();
}

class _ViewListState extends State<ViewList> {
 String inputText = '';

  void _showInputDialog(BuildContext context) { 
    
  final TextEditingController controllerSuka = TextEditingController();
    void updateText() {
      setState(
        () {
          inputText = controllerSuka.text;
        },
      );
    }

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Введите текст!'),
          content: TextField(
            controller: controllerSuka,
            decoration: InputDecoration(
              labelText: 'ваш текст',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                updateText();
                Navigator.pop(context);
              },
              child: Text('Сохранить'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Закрываем диалог
              },
              child: Text("Отмена"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Еу Еу'),
        centerTitle: true,
        backgroundColor: Colors.cyanAccent,
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => NextPage()),
            );
          },
          icon: Icon(Icons.arrow_forward),
        ),
      ),
      body: Center(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.amber,
              width: 400,
              height: 200,
              child: ListView(
                children: [
                  ListTile(
                    leading: Icon(Icons.star),
                    title: Text('Элемент 1'),
                    subtitle: Text('Хрен его знает что тут писать'),
                    trailing: Icon(Icons.arrow_forward),
                  ),
                  ListTile(
                    leading: Icon(Icons.favorite),
                    title: Text('Элемент 2'),
                    subtitle: Text('Описание этого элемента'),
                  ),
                  ListTile(
                    leading: Icon(Icons.settings),
                    title: Text('Элемент 3'),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: 400,
              color: Colors.greenAccent,
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      setState(
                        () {
                          _showInputDialog(context);
                        },
                      );
                    },
                    child: Text('Оставить комментарий'),
                  ),
                  Text(inputText),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
