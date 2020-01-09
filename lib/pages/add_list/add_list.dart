import 'package:flutter/material.dart';

class AddListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nova lista'),
      ),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: "Título da lista"),
            ),
            SizedBox(
              height: 8,
            ),
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: "Descrição"),
            )
          ],
        ),
      ),
    );
  }
}
