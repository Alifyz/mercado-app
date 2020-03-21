import 'package:groceryapp/domain/grocery_item.dart';
import 'package:groceryapp/repository/database.dart';
import 'package:groceryapp/repository/database_schema.dart';
import 'package:sqflite/sqflite.dart';

class Repository {
  static Future<List<GroceryItem>> getGroceriesByCategory(String category) async {
    final Database db = await DatabaseHelper.setupDatabase();
    final List<Map<String, dynamic>> result = await db.query(
      TABLE_NAME,
      columns: ['id, title, quantity, category'],
      where: 'category = ?',
      whereArgs: [category],
    );

    return List.generate(result.length, (index) {
      return GroceryItem(
        id: result[index]['id'],
        title: result[index]['title'],
        quantity: result[index]['quantity'],
        category: result[index]['category']
      );
    });
  }

  static Future<List<GroceryItem>> getAllGroceries() async  {
    final Database db = await DatabaseHelper.setupDatabase();
    final List<Map<String, dynamic>> result = await db.query(
      TABLE_NAME,
    );

    return List.generate(result.length, (index) {
      return GroceryItem(
        id: result[index]['id'],
        title: result[index]['title'],
        quantity: result[index]['quantity'],
        category: result[index]['category']
      );
    });
  }
}
