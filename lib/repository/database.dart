import 'package:groceryapp/repository/database_schema.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper {
  static Future<Database> setupDatabase() async {
    var path = await getDatabasesPath();
    var databasePath = join(path, '$DB_NAME');
    return openDatabase(
      databasePath,
      version: 1,
      onCreate: _populateData
    );
  }

  static void _populateData(Database db, int version) async {
    await db.execute("""
            CREATE TABLE $TABLE_NAME(
              id INTEGER PRIMARY KEY, 
              title TEXT, 
              quantity INTEGER, 
              category TEXT)""");
    await db.execute('$INSERT_MEATS');
  }
}
