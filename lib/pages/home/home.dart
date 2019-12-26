import 'package:flutter/material.dart';
import 'package:groceryapp/domain/grocery_list.dart';
import 'package:groceryapp/model/application_model.dart';
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
          Provider.of<ApplicationModel>(context).add(
            GroceryList(
              id: 1,
              title: 'Testing the Title',
              description: 'Some description',
              isFavorite: true
            )
          );
        },
      ),
      body: Consumer<ApplicationModel>(
        builder: (context, model, child) {
          if(model.groceryList.length == 0) {
            return Center(
              child: Text("Empty list, add some data"),
            );
          }else if(model.groceryList.isNotEmpty){
            return ListView.builder(
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(model.groceryList[index].title),
                  );
                },
                itemCount: model.groceryList.length,
            );
          }else {
            return Center(
              child: Text("Some error has occur"),
            );
          }
        },
      ),
    );
  }
}
