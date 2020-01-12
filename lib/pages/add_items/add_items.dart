import 'package:flutter/material.dart';

class AddItemsPage extends StatelessWidget {
  const AddItemsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Adicionar items"),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: List.generate(10, (index) {
          return Card(
            child: Center(
              child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: Image.asset('img/meat.png'),
                  width: 48,
                  height: 48,
                ),
                Text("Category $index")
              ],
            )),
          );
        }),
      ),
    );
  }
}
