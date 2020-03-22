import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:groceryapp/repository/repository.dart';
import 'grocery_item.dart';

class AppModel with ChangeNotifier {
  List<GroceryItem> _items = [];
  List<int> _selectedItems = [];
  Repository repository;

  AppModel({this.repository});

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

  List<GroceryItem> getCurrentGroceries() {
    return _items;
  }

  List<int> getSelectedItems() {
    return _selectedItems;
  }

  void clearList() {
    _items.clear();
    _selectedItems.clear();
  }

  Future<List<GroceryItem>> getGroceriesByCategory(String category) {
    return repository.getGroceriesByCategory(category);
  }

  Future<List<GroceryItem>> getAllGroceries() {
    return repository.getAllGroceries();
  }

  Future<List<GroceryItem>> getSavedLists() {
    return repository.getSavedLists();
  }

  Future<List<GroceryItem>> getGroceriesByListName(String listName) {
    return repository.getGroceriesByListName(listName);
  }

  Future<void> saveUserGroceriesList(
    String listName,
  ) {
    return repository.saveUserGroceriesList(listName, getCurrentGroceries());
  }

  Future<void> updateUserList(GroceryItem itemToUpdate) {
    repository.updateUserList(itemToUpdate);
    notifyListeners();
  }
}
