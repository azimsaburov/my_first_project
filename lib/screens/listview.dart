import 'package:flutter/material.dart';

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
        title: Text('Листвью'),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.amber,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () =>
                        Navigator.pushReplacementNamed(context, '/home'),
                    icon: Icon(Icons.arrow_back),
                  ),
                  SizedBox(height: 20),
                  IconButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/');
                    },
                    icon: Icon(Icons.arrow_forward),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Container( 
                width: 400,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ListView(
                  children: [
                    ListTile(
                      leading: Icon(Icons.star),
                      title: Text('Элемент 1'),
                      subtitle: Text('Хрен его знает что тут писать'),
                      trailing: Icon(Icons.kayaking),
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
              SizedBox(height: 10),
              Container(
                width: 200,
                height:100,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(inputText,),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
