const DB_NAME = "grocery_db";
const TABLE_NAME = "groceries_list";

const INSERT_MEATS = """
  INSERT INTO $TABLE_NAME values(
    1,
    "Carne bovina",
    1,
    "Meat"
  ),
  (
    2,
    "Carne de porco",
    1,
    "Meat"
  ),
  (
    3,
    "Carne moída",
    1,
    "Meat"
  ),
  (
    4,
    "Carne bovina",
    1,
    "Meat"
  )
""";