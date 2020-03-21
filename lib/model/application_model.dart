import 'package:flutter/foundation.dart';
import 'package:groceryapp/domain/grocery_item.dart';
import 'package:groceryapp/domain/grocery_list.dart';

class AppModel with ChangeNotifier {
  List<GroceryItem> _items = [];
  List<int> _selectedItems = [];
  GroceryList _grocerylist;

  void addItem(GroceryItem newItem) {
    if (!_items.contains(newItem)) {
      _items.add(newItem);
      _selectedItems.add(newItem.id);
    } else {
      _items.remove(newItem);
      _selectedItems.remove(newItem.id);
    }
    notifyListeners();
  }

  void addGroceryList(GroceryList newList) {
    _grocerylist = newList;
    notifyListeners();
  }

  List<int> getSelectedItems() {
    return _selectedItems;
  }
}
