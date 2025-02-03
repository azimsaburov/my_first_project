import 'package:flutter/material.dart';

class ViewList extends StatefulWidget {
  const ViewList({super.key});

  @override
  State<ViewList> createState() => _ViewListState();
}

class _ViewListState extends State<ViewList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Expanded(
        child: Container(
          color: Colors.amber,
          width: 500,
          height: 1000,
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
      ),
    );
  }
}
