import 'package:flutter/material.dart';
import 'package:groceryapp/widgets/grocery_category.dart';

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
          GroceryCategory(
            title: 'Carnes',
            onDetailsScreen: () {},
            assetPath: 'img/meat.png',
          ),
          GroceryCategory(
            title: 'Laticínios',
            onDetailsScreen: () {},
            assetPath: 'img/milk.png',
          ),
          GroceryCategory(
            title: 'Limpeza',
            onDetailsScreen: () {},
            assetPath: 'img/cleaning.png',
          ),
          GroceryCategory(
            title: 'Legumes',
            onDetailsScreen: () {},
            assetPath: 'img/fiber.png',
          ),
        ],
      ),
    );
  }
}
