import 'package:flutter/material.dart';
import 'package:groceryapp/domain/grocery_list.dart';
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
          Navigator.pushNamed(context, '/add-list');
        },
      ),
      body: Consumer<ApplicationModel>(
        builder: (context, model, child) {
          if(model.groceryList.length == 0) {
            return EmptyListWidget();
          }else if(model.groceryList.isNotEmpty){
            return ListView.builder(
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(model.groceryList[index].title),
                    onTap: () {
                      print("chamar o SetState no Item correto $index");
                    },
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
