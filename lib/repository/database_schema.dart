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
  (216,"Queijo ralado",1,"Milk"),
  (217,"Leite em pó",1,"Milk")
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


const INSERT_FRUIT = """
  INSERT INTO $TABLE_GROCERIES VALUES
  (500,"Laranja",1,"Fruit"),
  (501,"Mamão",1,"Fruit"),
  (502,"Maça",1,"Fruit"),
  (503,"Melancia",1,"Fruit"),
  (504,"Limão",1,"Fruit"),
  (505,"Tangerina",1,"Fruit"),
  (506,"Manga",1,"Fruit"),
  (507,"Abacaxi",1,"Fruit"),
  (508,"Pera",1,"Fruit"),
  (509,"Melão",1,"Fruit"),
  (510,"Banana",1,"Fruit"),
  (511,"Uva",1,"Fruit"),
  (512,"Maracujá",1,"Fruit"),
  (513,"Abacate",1,"Fruit"),
  (514,"Coco verde",1,"Fruit"),
  (515,"Caqui",1,"Fruit"),
  (516,"Ameixa",1,"Fruit"),
  (517,"Mexerica",1,"Fruit"),
  (518,"Pêssego",1,"Fruit"),
  (519,"Kiwi",1,"Fruit")
""";


const INSERT_PETS = """
  INSERT INTO $TABLE_GROCERIES VALUES
  (600,"Ração para cachorro",1,"Pet"),
  (601,"Ração para gato",1,"Pet"),
  (602,"Outras ração",1,"Pet"),
  (603,"Anti-pulga/carrapato",1,"Pet"),
  (604,"Whiskas",1,"Pet"),
  (605,"Petisco para cachorro",1,"Pet"),
  (606,"Petisco para gato",1,"Pet"),
  (607,"Coleira",1,"Pet"),
  (608,"Guia de passeio",1,"Pet"),
  (609,"Cama de dormir",1,"Pet")
""";

const INSERT_DRINKS = """
  INSERT INTO $TABLE_GROCERIES VALUES
  (700,"Água filtrada",1,"Drink"),
  (701,"Água com gás",1,"Drink"),
  (702,"Água sem gás",1,"Drink"),
  (703,"Suco",1,"Drink"),
  (704,"Refrigerante",1,"Drink"),
  (705,"Cerveja",1,"Drink"),
  (706,"Vinho",1,"Drink"),
  (707,"Whisky",1,"Drink"),
  (708,"Outras bebidas",1,"Drink")
""";

const INSERT_COFFEE = """
  INSERT INTO $TABLE_GROCERIES VALUES
  (800,"Café em capsula",1,"Coffe"),
  (801,"Café em pó",1,"Coffe"),
  (802,"Café puro",1,"Coffe"),
  (803,"Chá",1,"Coffe")
""";

const INSERT_HOUSE = """
  INSERT INTO $TABLE_GROCERIES VALUES
  (900,"Pano de chão",1,"House"),
  (901,"Utensilhos domésticos",1,"House"),
  (902,"Pratos",1,"House"),
  (903,"Copos",1,"House"),
  (904,"Garfo e colheres",1,"House"),
  (905,"Vasilhas",1,"House"),
  (906,"Liquidificador",1,"House"),
  (907,"Batedeira",1,"House"),
  (908,"Limpa fogão",1,"House"),
  (909,"Tira limo",1,"House")
""";

const INSERT_KIDS = """
  INSERT INTO $TABLE_GROCERIES VALUES
  (1000,"Frauda",1,"Kids"),
  (1001,"Mamadeira",1,"Kids"),
  (1002,"Brinquedo",1,"Kids"),
  (1003,"Leite em pó",1,"Kids")
""";

const INSERT_SWEET = """
  INSERT INTO $TABLE_GROCERIES VALUES
  (1100,"Bombom",1,"Sweet"),
  (1101,"Chocolate",1,"Sweet"),
  (1102,"Doce de leite",1,"Sweet"),
  (1103,"Geleia",1,"Sweet"),
  (1104,"Doce de banana",1,"Sweet"),
  (1105,"Outros doces",1,"Sweet")
""";

const INSERT_PHARMACY = """
  INSERT INTO $TABLE_GROCERIES VALUES
  (1200,"Remério para dor de cabeça",1,"Pharmacy"),
  (1201,"Cotonete",1,"Pharmacy"),
  (1202,"Desodorante",1,"Pharmacy"),
  (1203,"Teste de gravidez",1,"Pharmacy"),
  (1204,"Preservativos",1,"Pharmacy")
""";

const INSERT_PASTA = """
  INSERT INTO $TABLE_GROCERIES VALUES
  (1300,"Grão de bico",1,"Pasta"),
  (1301,"Macarrão parafuso",1,"Pasta"),
  (1302,"Macarrão normal",1,"Pasta"),
  (1303,"Spaghetti",1,"Pasta"),
  (1304,"Cup noddles",1,"Pasta"),
  (1305,"Cup noddles",1,"Pasta")
""";

const INSERT_SAUCE = """
  INSERT INTO $TABLE_GROCERIES VALUES
  (1400,"Molho de tomate",1,"Sauce"),
  (1401,"Alho",1,"Sauce"),
  (1402,"Pimenta",1,"Sauce"),
  (1403,"Curry",1,"Sauce"),
  (1404,"Ketchup",1,"Sauce"),
  (1405,"Maionese",1,"Sauce"),
  (1406,"Mostarda",1,"Sauce")
""";

const INSERT_BAKERY = """
  INSERT INTO $TABLE_GROCERIES VALUES
  (1500,"Pão francês",1,"Bakery"),
  (1501,"Pão de forma",1,"Bakery"),
  (1502,"Rosca",1,"Bakery"),
  (1503,"Bolacha",1,"Bakery"),
  (1504,"Biscoito",1,"Bakery")
""";

const INSERT_HEALTH = """
  INSERT INTO $TABLE_GROCERIES VALUES
  (1600,"Maquiagem",1,"Health"),
  (1601,"Shampoo",1,"Health"),
  (1602,"Condicionador",1,"Health"),
  (1603,"Absorvente",1,"Health"),
  (1604,"Absorvente interno",1,"Health"),
  (1605,"Sabonete",1,"Health")
""";
