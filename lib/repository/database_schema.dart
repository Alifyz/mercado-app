const DB_NAME = "grocery_db";
const TABLE_GROCERIES = "groceries_list";
const TABLE_USERLIST = "user_lists";
const TABLE_USERGROCERIES = 'user_groceries';

const DATABASE_GROCERIES = """
            CREATE TABLE $TABLE_GROCERIES(
              id INTEGER PRIMARY KEY, 
              title TEXT, 
              quantity INTEGER, 
              category TEXT)""";

const DATABASE_USERLIST = """
            CREATE TABLE $TABLE_USERLIST(
              id INTEGER PRIMARY KEY AUTOINCREMENT, 
              listName TEXT, 
              item_id INTEGER,
              isChecked INTEGER)""";

const DATABASE_USER_GROCERIES = """
            CREATE TABLE $TABLE_USERGROCERIES(
              id INTEGER PRIMARY KEY AUTOINCREMENT, 
              title TEXT, 
              quantity INTEGER, 
              category TEXT,
              listName  TEXT,
              isChecked INTEGER)""";

const INSERT_MEATS = """
  INSERT INTO $TABLE_GROCERIES VALUES
  (100,"Carne bovina",1,"Meat"),
  (101,"Carne de porco",1,"Meat"),
  (102,"Carne moída",1,"Meat"),
  (103,"Carne bovina",1,"Meat")
""";

const INSERT_MILKS = """
  INSERT INTO $TABLE_GROCERIES VALUES
  (200,"Leite",1,"Milk"),
  (201,"Queijo",1,"Milk")
""";

const INSERT_CLEANING = """
  INSERT INTO $TABLE_GROCERIES VALUES
  (300,"Sabão",1,"Cleaning"),
  (301,"Detergente",1,"Cleaning")
""";

const INSERT_FIBER = """
  INSERT INTO $TABLE_GROCERIES VALUES
  (400,"Cenoura",1,"Fiber"),
  (401,"Repolho",1,"Fiber")
""";

