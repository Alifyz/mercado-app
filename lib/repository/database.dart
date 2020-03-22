import 'package:groceryapp/repository/database_schema.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper {
  static Future<Database> setupDatabase() async {
    var path = await getDatabasesPath();
    var databasePath = join(path, DB_NAME);
    return openDatabase(
      databasePath,
      version: 1,
      onCreate: _populateData
    );
  }

  static void _populateData(Database db, int version) async {
    await db.execute(DATABASE_GROCERIES);
    await db.execute(DATABASE_USERLIST);
    await db.execute(INSERT_MEATS);
    await db.execute(INSERT_MILKS);
    await db.execute(INSERT_CLEANING);
    await db.execute(INSERT_FIBER);
  }
}
