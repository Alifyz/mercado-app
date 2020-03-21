import 'package:flutter/material.dart';
import 'package:groceryapp/domain/grocery_item.dart';
import 'package:groceryapp/pages/add_items_detail/utils/arguments.dart';

class AddItemsDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final AddDetailsArguments args = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de ${getHeader(args.categoryName)}'),
      ),
    );
  }
}



String getHeader(Category category) {
  switch(category) {
    case Category.Meat:
      return "carnes";
      break;
    case Category.Milk:
      return "laticínios";
      break;
    case Category.Cleaning:
      return "limpeza";
      break;
    case Category.Fiber:
      return "legumes";
      break;
    default: {
      return "items";
    }
  }
}