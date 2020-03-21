import 'package:flutter/material.dart';
import 'package:groceryapp/domain/grocery_item.dart';

class GroceryListWidget extends StatelessWidget {
  final List<GroceryItem> data;

  GroceryListWidget({this.data});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(data[index].title),
          );
        });
  }
}
