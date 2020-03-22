import 'package:groceryapp/domain/grocery_item.dart';
import 'package:groceryapp/repository/database.dart';
import 'package:groceryapp/repository/database_schema.dart';
import 'package:sqflite/sqflite.dart';

class Repository {
  Future<List<GroceryItem>> getGroceriesByCategory(String category) async {
    final Database db = await DatabaseHelper.initDatabase();
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
    final Database db = await DatabaseHelper.initDatabase();
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

  Future<List<GroceryItem>> getSavedLists() async {
    final Database db = await DatabaseHelper.initDatabase();
    final List<Map<String, dynamic>> result = await db.query(TABLE_USERGROCERIES,
        columns: ['id, listName, isChecked, title'],
        groupBy: 'listName');

    return List.generate(result.length, (index) {
      return GroceryItem(
          id: result[index]['id'],
          listName: result[index]['listName'],
          title: result[index]['title'],
          isChecked: result[index]['isChecked'] == 0 ? false : true);
    });
  }

  Future<List<GroceryItem>> getGroceriesByListName(String listName) async {
    final Database db = await DatabaseHelper.initDatabase();
    final List<Map<String, dynamic>> result = await db.query(
      TABLE_USERGROCERIES,
      columns: ['id, title, isChecked'],
      where: 'listName = ?',
      whereArgs: [listName],
    );

    return List.generate(result.length, (index) {
      return GroceryItem(
        id: result[index]['id'],
        title: result[index]['title'],
        isChecked: result[index]['isChecked'] == 0 ? false : true
      );
    });
  }

  // Future<void> saveCurrentItems(
  //     String listName, List<GroceryItem> selectedItems) async {
  //   final Database db = await DatabaseHelper.initDatabase();
  //   for (GroceryItem item in selectedItems) {
  //     Map<String, dynamic> data = {
  //       'listName': listName,
  //       'item_id': item.id,
  //       'isChecked': 0
  //     };
  //     await db.insert(
  //       TABLE_USERLIST,
  //       data,
  //       conflictAlgorithm: ConflictAlgorithm.replace,
  //     );
  //   }
  // }

  Future<void> saveUserGroceriesList(
      String listName, List<GroceryItem> selectedItems) async {
    final Database db = await DatabaseHelper.initDatabase();
    // selectedItems.forEach((item) => item.listName = listName);
    for (GroceryItem item in selectedItems) {
      Map<String, dynamic> data = {
        'listName': listName,
        'isChecked': 0,
        'title': item.title,
      };
      await db.insert(
        TABLE_USERGROCERIES,
        data,
        conflictAlgorithm: ConflictAlgorithm.replace,
      );
    }
  }
}
