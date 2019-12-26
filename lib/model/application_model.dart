import 'package:flutter/foundation.dart';
import 'package:groceryapp/domain/grocery_list.dart';

class ApplicationModel with ChangeNotifier {

  List<GroceryList> _list = [];
  List<GroceryList> get groceryList => this._list;

  void add(GroceryList newItem) {
    _list.add(newItem);
    notifyListeners();
  }

}