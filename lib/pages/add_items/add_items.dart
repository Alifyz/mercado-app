import 'package:flutter/material.dart';
import 'package:groceryapp/model/grocery_item.dart';
import 'package:groceryapp/pages/add_items_detail/utils/arguments.dart';
import 'package:groceryapp/widgets/grocery_category.dart';

class AddItemsPage extends StatelessWidget {

  static String route = '/add-items';

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
            onDetailsScreen: () => Navigator.popAndPushNamed(
              context,
              '/add-items-details',
              arguments: AddDetailsArguments(categoryName: Category.Meat),
            ),
            assetPath: 'img/meat.png',
          ),
          GroceryCategory(
            title: 'Laticínios',
            onDetailsScreen: () => Navigator.popAndPushNamed(
              context,
              '/add-items-details',
              arguments: AddDetailsArguments(
                categoryName: Category.Milk,
              ),
            ),
            assetPath: 'img/milk.png',
          ),
          GroceryCategory(
            title: 'Limpeza',
            onDetailsScreen: () => Navigator.popAndPushNamed(
              context,
              '/add-items-details',
              arguments: AddDetailsArguments(
                categoryName: Category.Cleaning,
              ),
            ),
            assetPath: 'img/cleaning.png',
          ),
          GroceryCategory(
            title: 'Legumes',
            onDetailsScreen: () => Navigator.popAndPushNamed(
              context,
              '/add-items-details',
              arguments: AddDetailsArguments(
                categoryName: Category.Fiber,
              ),
            ),
            assetPath: 'img/fiber.png',
          ),
        ],
      ),
    );
  }
}
