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
              arguments: AddDetailsArguments(
                categoryName: Category.Meat,
              ),
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
          GroceryCategory(
            title: 'Frutas',
            onDetailsScreen: () => Navigator.popAndPushNamed(
              context,
              '/add-items-details',
              arguments: AddDetailsArguments(
                categoryName: Category.Fruit,
              ),
            ),
            assetPath: 'img/fruit.png',
          ),
          GroceryCategory(
            title: 'Pet',
            onDetailsScreen: () => Navigator.popAndPushNamed(
              context,
              '/add-items-details',
              arguments: AddDetailsArguments(
                categoryName: Category.Pet,
              ),
            ),
            assetPath: 'img/pet.png',
          ),
          GroceryCategory(
            title: 'Bebidas',
            onDetailsScreen: () => Navigator.popAndPushNamed(
              context,
              '/add-items-details',
              arguments: AddDetailsArguments(
                categoryName: Category.Drink,
              ),
            ),
            assetPath: 'img/drink.png',
          ),
          GroceryCategory(
            title: 'Cafe, chá',
            onDetailsScreen: () => Navigator.popAndPushNamed(
              context,
              '/add-items-details',
              arguments: AddDetailsArguments(
                categoryName: Category.Coffe,
              ),
            ),
            assetPath: 'img/coffee.png',
          ),
          GroceryCategory(
            title: 'Casa e cozinha',
            onDetailsScreen: () => Navigator.popAndPushNamed(
              context,
              '/add-items-details',
              arguments: AddDetailsArguments(
                categoryName: Category.House,
              ),
            ),
            assetPath: 'img/house.png',
          ),
          GroceryCategory(
            title: 'Crianças',
            onDetailsScreen: () => Navigator.popAndPushNamed(
              context,
              '/add-items-details',
              arguments: AddDetailsArguments(
                categoryName: Category.Kids,
              ),
            ),
            assetPath: 'img/kids.png',
          ),
          GroceryCategory(
            title: 'Doces',
            onDetailsScreen: () => Navigator.popAndPushNamed(
              context,
              '/add-items-details',
              arguments: AddDetailsArguments(
                categoryName: Category.Sweet,
              ),
            ),
            assetPath: 'img/sweet.png',
          ),
          GroceryCategory(
            title: 'Farmácia',
            onDetailsScreen: () => Navigator.popAndPushNamed(
              context,
              '/add-items-details',
              arguments: AddDetailsArguments(
                categoryName: Category.Pharmacy,
              ),
            ),
            assetPath: 'img/drugs.png',
          ),
          GroceryCategory(
            title: 'Grãos e massas',
            onDetailsScreen: () => Navigator.popAndPushNamed(
              context,
              '/add-items-details',
              arguments: AddDetailsArguments(
                categoryName: Category.Pasta,
              ),
            ),
            assetPath: 'img/pasta.png',
          ),
          GroceryCategory(
            title: 'Higiene pessoal',
            onDetailsScreen: () => Navigator.popAndPushNamed(
              context,
              '/add-items-details',
              arguments: AddDetailsArguments(
                categoryName: Category.Personal,
              ),
            ),
            assetPath: 'img/personal.png',
          ),
          GroceryCategory(
            title: 'Molhos e temperos',
            onDetailsScreen: () => Navigator.popAndPushNamed(
              context,
              '/add-items-details',
              arguments: AddDetailsArguments(
                categoryName: Category.Sauce,
              ),
            ),
            assetPath: 'img/sauce.png',
          ),
          GroceryCategory(
            title: 'Papelaria',
            onDetailsScreen: () => Navigator.popAndPushNamed(
              context,
              '/add-items-details',
              arguments: AddDetailsArguments(
                categoryName: Category.Paper,
              ),
            ),
            assetPath: 'img/paper.png',
          ),
          GroceryCategory(
            title: 'Peixe',
            onDetailsScreen: () => Navigator.popAndPushNamed(
              context,
              '/add-items-details',
              arguments: AddDetailsArguments(
                categoryName: Category.Fish,
              ),
            ),
            assetPath: 'img/fish.png',
          ),
          GroceryCategory(
            title: 'Padaria',
            onDetailsScreen: () => Navigator.popAndPushNamed(
              context,
              '/add-items-details',
              arguments: AddDetailsArguments(
                categoryName: Category.Bakery,
              ),
            ),
            assetPath: 'img/bakery.png',
          ),
          GroceryCategory(
            title: 'Saúde e beleza',
            onDetailsScreen: () => Navigator.popAndPushNamed(
              context,
              '/add-items-details',
              arguments: AddDetailsArguments(
                categoryName: Category.Health,
              ),
            ),
            assetPath: 'img/beauty.png',
          ),
        ],
      ),
    );
  }
}
