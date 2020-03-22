import 'package:groceryapp/domain/grocery_item.dart';
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

  Future<GroceryItem> getGroceriesById(int id) async {
    if (id != null) {
      final Database db = await DatabaseHelper.setupDatabase();
      final List<Map<String, dynamic>> result = await db.query(TABLE_GROCERIES,
          columns: ['id, title, quantity, category'],
          where: 'id = ?',
          whereArgs: [id],
          distinct: true);
      return GroceryItem(
          id: result[0]['id'],
          title: result[0]['title'],
          quantity: result[0]['quantity'],
          category: result[0]['category']);
    }
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

  Future<List<GroceryItem>> getSavedItems(String listName) async {
    final Database db = await DatabaseHelper.setupDatabase();
    final List<Map<String, dynamic>> result = await db.query(
      TABLE_USERLIST,
      columns: ['listName', 'item_id'],
      where: 'listName = ?',
      whereArgs: [listName],
    );

    List<GroceryItem> savedItems = List();
    result.forEach((row) async {
      savedItems.add(await getGroceriesById(row['id']));
    });
    return savedItems;
  }
}
