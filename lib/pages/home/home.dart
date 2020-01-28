import 'package:flutter/material.dart';
import 'package:groceryapp/model/application_model.dart';
import 'package:groceryapp/pages/home/widget/empty_list.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lista de compras"),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          //Navigator.pushNamed(context, '/add-items');
          makeDialog(context);
        },
      ),
      body: Consumer<ApplicationModel>(
        builder: (context, model, child) {
          if (model.groceryList.length == 0) {
            return EmptyListWidget();
          } else if (model.groceryList.isNotEmpty) {
            return ListView.builder(
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(model.groceryList[index].title),
                  onTap: () {},
                );
              },
              itemCount: model.groceryList.length,
            );
          } else {
            return Center(
              child: Text("Some error has occur"),
            );
          }
        },
      ),
    );
  }

  Future<void> makeDialog(BuildContext context) {
    return showDialog<void>(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Nova lista"),
            content:  TextFormField(
              decoration: InputDecoration(
                hintText: "Nome da sua lista de compras..."
              ),
            ),
            actions: <Widget>[
              FlatButton(
                child: Text("CRIAR"),
                onPressed: () {
                  Navigator.pop(context);
                  //Navigator.pushNamed(context, '/add-items');
                },
              ),
              FlatButton(
                child: Text("CANCELAR"),
                onPressed: () {
                  Navigator.pop(context);
                },
              )
            ],
          );
        });
  }
}
