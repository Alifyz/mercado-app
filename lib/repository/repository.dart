import 'package:groceryapp/domain/grocery_item.dart';
import 'package:groceryapp/domain/grocery_list.dart';
import 'package:groceryapp/repository/database.dart';
import 'package:groceryapp/repository/database_schema.dart';
import 'package:sqflite/sqflite.dart';

class Repository {
  Future<List<GroceryItem>> getGroceriesByCategory(String category) async {
    final Database db = await DatabaseHelper.setupDatabase();
    final List<Map<String, dynamic>> result = await db.query(
      TABLE_GROCERIES,
      columns: ['id, title, quantity, category'],
      where: 'category = ?',
      whereArgs: [category],
    );

    return List.generate(result.length, (index) {
      return GroceryItem(
          id: result[index]['id'],
          title: result[index]['title'],
          quantity: result[index]['quantity'],
          category: result[index]['category']);
    });
  }

  Future<List<GroceryItem>> getAllGroceries() async {
    final Database db = await DatabaseHelper.setupDatabase();
    final List<Map<String, dynamic>> result = await db.query(
      TABLE_GROCERIES,
    );

    return List.generate(result.length, (index) {
      return GroceryItem(
          id: result[index]['id'],
          title: result[index]['title'],
          quantity: result[index]['quantity'],
          category: result[index]['category']);
    });
  }

  Future<List<GroceryList>> getSavedLists() async {
    final Database db = await DatabaseHelper.setupDatabase();
    final List<Map<String, dynamic>> result = await db.query(
      TABLE_USERLIST,
      columns: ['id, listName'],
      distinct: true,
      groupBy: 'listName'
    );

    return List.generate(result.length, (index) {
      return GroceryList(
        id: result[index]['id'],
        name: result[index]['listName']
      );
    });
  }

  Future<void> saveCurrentItems(
      String listName, List<GroceryItem> selectedItems) async {
    final Database db = await DatabaseHelper.setupDatabase();
    for (GroceryItem item in selectedItems) {
      Map<String, dynamic> data = {'listName': listName, 'item_id': item.id};
      await db.insert(
        TABLE_USERLIST,
        data,
        conflictAlgorithm: ConflictAlgorithm.replace,
      );
    }
  }
}
