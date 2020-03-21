import 'package:flutter/material.dart';

class UserListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String listName = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text(listName),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add_circle),
            onPressed: () {
              Navigator.pushNamed(context, '/add-items');
            },
          )
        ],
      ),
    );
  }
}
