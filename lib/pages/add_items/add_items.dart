import 'package:flutter/material.dart';
import 'package:groceryapp/pages/add_items/widgets/cleaning_category.dart';
import 'package:groceryapp/pages/add_items/widgets/dairy_category.dart';
import 'package:groceryapp/pages/add_items/widgets/meat_category.dart';
import 'package:groceryapp/pages/add_items/widgets/vegetables_category.dart';

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
        children: <Widget>[
         MeatCategory(),
         DairyCategory(),
         CleaningCategory(),
         VegetablesCategory()
        ],
      ),
    );
  }
}
