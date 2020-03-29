import 'package:groceryapp/model/grocery_item.dart';

String getHeader(Category category) {
  switch (category) {
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
    default:
      {
        return "items";
      }
  }
}

String getQueryCategory(Category category) {
  switch (category) {
    case Category.Meat:
      return 'Meat';
      break;
    case Category.Cleaning:
      return 'Cleaning';
      break;
    case Category.Fiber:
      return 'Fiber';
      break;
    case Category.Milk:
      return 'Milk';
      break;
    case Category.Fruit:
      return 'Fruit';
      break;
    case Category.Pet:
      return 'Pet';
      break;
    case Category.Drink:
      return 'Drink';
      break;
    case Category.Coffe:
      return 'Coffe';
      break;
    case Category.House:
      return 'House';
      break;
    case Category.Kids:
      return 'Kids';
      break;
    case Category.Sweet:
      return 'Sweet';
      break;
    case Category.Pharmacy:
      return 'Pharmacy';
      break;
    case Category.Pasta:
      return 'Pasta';
      break;
    case Category.Personal:
      return 'Personal';
      break;
    case Category.Sauce:
      return 'Sauce';
      break;
    case Category.Paper:
      return 'Paper';
      break;
    case Category.Fish:
      return 'Fish';
      break;
    case Category.Bakery:
      return 'Bakery';
      break;
    case Category.Health:
      return 'Health';
      break;
    case Category.Other:
      return 'Other';
      break;
    default:
      return 'Other';
      break;
  }
}
