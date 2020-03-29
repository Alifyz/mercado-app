import 'package:groceryapp/repository/database_schema.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper {
  static Future<Database> initDatabase() async {
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
    await db.execute(DATABASE_USER_GROCERIES);
    await db.execute(INSERT_MEATS);
    await db.execute(INSERT_MILKS);
    await db.execute(INSERT_CLEANING);
    await db.execute(INSERT_FIBER);
    await db.execute(INSERT_FRUIT);
    await db.execute(INSERT_PETS);
    await db.execute(INSERT_DRINKS);
    await db.execute(INSERT_COFFEE);
    await db.execute(INSERT_HOUSE);
    await db.execute(INSERT_KIDS);
    await db.execute(INSERT_SWEET);
    await db.execute(INSERT_PHARMACY);
    await db.execute(INSERT_PASTA);
    await db.execute(INSERT_SAUCE);
    await db.execute(INSERT_BAKERY);
    await db.execute(INSERT_HEALTH);
  }
}
