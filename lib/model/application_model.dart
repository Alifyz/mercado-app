import 'package:flutter/foundation.dart';
import 'package:groceryapp/domain/grocery_item.dart';
import 'package:groceryapp/domain/grocery_list.dart';

class ApplicationModel with ChangeNotifier {

  List<GroceryItem> _items =[];
  GroceryList _grocerylist;

  void addItem(GroceryItem newItem) {
    _items.add(newItem);
    notifyListeners();
  }

  void addGroceryList(GroceryList newList){
    _grocerylist = newList;
    notifyListeners();
  }

}