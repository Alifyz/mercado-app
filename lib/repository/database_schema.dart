const DB_NAME = "grocery_db";
const TABLE_NAME = "groceries_list";

const DATABASE_CREATION = """
            CREATE TABLE $TABLE_NAME(
              id INTEGER PRIMARY KEY, 
              title TEXT, 
              quantity INTEGER, 
              category TEXT)""";

const INSERT_MEATS = """
  INSERT INTO $TABLE_NAME VALUES
  (100,"Carne bovina",1,"Meat"),
  (101,"Carne de porco",1,"Meat"),
  (102,"Carne moída",1,"Meat"),
  (103,"Carne bovina",1,"Meat")
""";

const INSERT_MILKS = """
  INSERT INTO $TABLE_NAME VALUES
  (200,"Leite",1,"Milk"),
  (201,"Queijo",1,"Milk")
""";

const INSERT_CLEANING = """
  INSERT INTO $TABLE_NAME VALUES
  (300,"Sabão",1,"Cleaning"),
  (301,"Detergente",1,"Cleaning")
""";

const INSERT_FIBER = """
  INSERT INTO $TABLE_NAME VALUES
  (400,"Cenoura",1,"Fiber"),
  (401,"Repolho",1,"Fiber")
""";

