import 'package:flutter/material.dart';
import 'package:groceryapp/pages/home/widget/shooping_list_dialog.dart';

class HomePage extends StatelessWidget {

  static String route = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lista de compras"),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          makeDialog(context);
        },
      ),
      body: Container() 
    );
  }
}
