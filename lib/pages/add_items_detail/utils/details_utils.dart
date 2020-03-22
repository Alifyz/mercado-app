
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

    default:
      return 'Other';
      break;
  }
}
