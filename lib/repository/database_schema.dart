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
  (103,"Carne bovina",1,"Meat"),
  (104,"Asas de frango/peru",1,"Meat"),
  (105,"bife",1,"Meat"),
  (106,"Carne de peru",1,"Meat"),
  (107,"Cordeiro",1,"Meat"),
  (108,"Costelas de porco",1,"Meat"),
  (109,"Coxas de frango",1,"Meat"),
  (110,"Carne empanada",1,"Meat"),
  (111,"Fígado",1,"Meat"),
  (112,"Filé",1,"Meat"),
  (113,"Galinha da angola",1,"Meat"),
  (114,"Carne bovina",1,"Meat"),
  (115,"Hamburger",1,"Meat"),
  (116,"Linguiça de frango",1,"Meat"),
  (117,"Linguiça de porco",1,"Meat"),
  (118,"Lombo",1,"Meat"),
  (119,"Pernil",1,"Meat"),
  (120,"Salsicha",1,"Meat")
""";

const INSERT_MILKS = """
  INSERT INTO $TABLE_GROCERIES VALUES
  (200,"Leite",1,"Milk"),
  (201,"Outros queijo",1,"Milk"),
  (202,"Leite condensado",1,"Milk"),
  (203,"Cheddar",1,"Milk"),
  (204,"Iogurte",1,"Milk"),
  (205,"Iogurte natural",1,"Milk"),
  (206,"Leite com chocolate",1,"Milk"),
  (207,"Manteiga de alho",1,"Milk"),
  (208,"Manteiga vegetal",1,"Milk"),
  (209,"Nata",1,"Milk"),
  (210,"Pudim",1,"Milk"),
  (211,"Queijo creme",1,"Milk"),
  (212,"Queijo fundido",1,"Milk"),
  (213,"Queijo gorgonzola",1,"Milk"),
  (214,"Queijo processado",1,"Milk"),
  (215,"Queijo provolone",1,"Milk"),
  (216,"Queijo ralado",1,"Milk")
""";

const INSERT_CLEANING = """
  INSERT INTO $TABLE_GROCERIES VALUES
  (300,"Sabão",1,"Cleaning"),
  (301,"Detergente",1,"Cleaning"),
  (302,"Amaciante",1,"Cleaning"),
  (303,"Desinfetante",1,"Cleaning"),
  (304,"Sabonete líquido",1,"Cleaning"),
  (305,"Escova de garrafa",1,"Cleaning"),
  (306,"Esponja esfoliante",1,"Cleaning"),
  (307,"Gel de limpeza",1,"Cleaning"),
  (308,"Limpa fornos",1,"Cleaning"),
  (309,"Sabão lava janelas",1,"Cleaning"),
  (310,"Cera para chão",1,"Cleaning"),
  (311,"Pano de limpeza",1,"Cleaning"),
  (312,"Saco de lixo",1,"Cleaning"),
  (313,"Vassoura",1,"Cleaning"),
  (314,"Rodo de limpeza",1,"Cleaning")
""";

const INSERT_FIBER = """
  INSERT INTO $TABLE_GROCERIES VALUES
  (400,"Cenoura",1,"Fiber"),
  (401,"Repolho",1,"Fiber"),
  (402,"Abacates",1,"Fiber"),
  (403,"Abóbora",1,"Fiber"),
  (404,"Abobrinha",1,"Fiber"),
  (405,"Acelga vermelha",1,"Fiber"),
  (406,"Aipo",1,"Fiber"),
  (407,"Alcachofra",1,"Fiber"),
  (408,"Alface",1,"Fiber"),
  (409,"Alho",1,"Fiber"),
  (410,"Ameixas",1,"Fiber"),
  (411,"Ameixas secas",1,"Fiber"),
  (412,"Amoras silvestres",1,"Fiber"),
  (413,"Bananas",1,"Fiber"),
  (414,"Batata-doce",1,"Fiber"),
  (415,"Batatas",1,"Fiber"),
  (416,"Batatas baby",1,"Fiber"),
  (417,"Beringela",1,"Fiber"),
  (418,"Beterraba",1,"Fiber"),
  (419,"Bróculis",1,"Fiber"),
  (420,"Castanha de caju",1,"Fiber"),
  (421,"Cebola",1,"Fiber"),
  (422,"Chili",1,"Fiber"),
  (423,"Coco",1,"Fiber"),
  (424,"Couve",1,"Fiber"),
  (425,"Ervilhas",1,"Fiber"),
  (426,"Espargos",1,"Fiber"),
  (427,"Espiga de milho",1,"Fiber"),
  (428,"Espinafre",1,"Fiber"),
  (429,"Figos",1,"Fiber"),
  (430,"Framboesas",1,"Fiber"),
  (431,"Frutas cítricas",1,"Fiber"),
  (432,"Grão de bico",1,"Fiber"),
  (433,"Groselhas",1,"Fiber"),
  (434,"Inhame",1,"Fiber"),
  (435,"Kiwi",1,"Fiber"),
  (436,"Laranjas",1,"Fiber"),
  (437,"Repolho",1,"Fiber")
""";

