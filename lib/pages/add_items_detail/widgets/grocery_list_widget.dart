import 'package:flutter/material.dart';
import 'package:groceryapp/model/application_model.dart';
import 'package:groceryapp/model/grocery_item.dart';
import 'package:provider/provider.dart';

class GroceryListWidget extends StatelessWidget {
  GroceryListWidget({this.data});

  final List<GroceryItem> data;

  @override
  Widget build(BuildContext context) {
    final AppModel _appModel = Provider.of<AppModel>(context);
    return Consumer<AppModel>(
      builder: (BuildContext context, AppModel value, Widget child) {
        return ListView.builder(
            itemCount: data.length,
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                  selected: _appModel.getSelectedItems().contains(data[index].id),
                  leading: IconButton(
                    icon: Icon(Icons.add),
                    onPressed: () {
                      _appModel.addItem(data[index]);
                    },
                  ),
                  title: Text(data[index].title),
                ),
              );
            });
      },
    );
  }
}
