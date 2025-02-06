import 'package:flutter/material.dart';

class NextPage extends StatefulWidget {
  const NextPage({super.key});

  @override
  State<NextPage> createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.green,
        width: 400,
        height: 200,
        child: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.favorite),
              title: Text('Acer Aspir 5'),
              subtitle: Text('Описание'),
              trailing: Icon(Icons.image),
            ),
          ],
        ),
      ),
    );
  }
}
