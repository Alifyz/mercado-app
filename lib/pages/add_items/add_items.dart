import 'dart:math';

import 'package:flutter/material.dart';
import 'package:groceryapp/model/application_model.dart';
import 'package:groceryapp/model/grocery_item.dart';
import 'package:groceryapp/pages/add_items_detail/utils/arguments.dart';
import 'package:groceryapp/widgets/grocery_category.dart';
import 'package:provider/provider.dart';

class AddItemsPage extends StatelessWidget {
  static String route = '/add-items';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Adicionar items"),
        actions: <Widget>[
          FlatButton(
            child: Text(
              'NOVO ITEM',
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () {
              showModalBottomSheet(
                isScrollControlled: true,
                context: context,
                builder: (context) => SingleChildScrollView(
                  child: Container(
                    margin: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: AddManualItem(),
                  ),
                ),
              );
            },
          )
        ],
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

class AddManualItem extends StatelessWidget {
  final _textController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
 
  @override
  Widget build(BuildContext context) {
    final AppModel _appModel = Provider.of<AppModel>(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Icon(
          Icons.create,
          size: 56,
          color: Colors.green,
        ),
        SizedBox(
          height: 16,
        ),
        Text(
          'NOVO PRODUTO MANUAL',
          style: TextStyle(
            fontSize: 18,
          ),
          textAlign: TextAlign.center,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: _formKey,
            child: TextFormField(
              autofocus: true,
              controller: _textController,
              validator: (value) {
                if(value.isEmpty || value.length <= 3) {
                  return 'Nome vazio ou pequeno demais';
                }else {
                  return null;
                }
              },
              decoration: InputDecoration(
                hintText: 'Nome do produto',
                border: OutlineInputBorder(),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: FlatButton(
            color: Theme.of(context).primaryColor,
            onPressed: () {
              if(_formKey.currentState.validate()) {
                final newItem = GroceryItem(
                  id: Random().nextInt(65535),
                  category: 'Other',
                  quantity: 1,
                  title: _textController.text
                );
                _appModel.addItem(newItem);
                Navigator.pop(context);
              }
            },
            child: Text(
              'SALVAR',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
        )
      ],
    );
  }
}
