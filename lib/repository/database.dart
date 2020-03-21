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
      onCreate: (db, version) {
        return db.execute('');
      },
    );
  }
}
