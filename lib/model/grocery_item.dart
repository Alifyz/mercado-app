class GroceryItem {
  final int id;
  final String title;
  final int quantity;
  final String category;
  bool isChecked;
  String listName;

  GroceryItem({
    this.id,
    this.title,
    this.quantity,
    this.category,
    this.listName,
    this.isChecked
  });
}

enum Category {
  Meat,
  Milk,
  Cleaning,
  Fiber,
  Fruit,
  Pet,
  Drink,
  Coffe,
  House,
  Kids,
  Sweet,
  Pharmacy,
  Pasta,
  Personal,
  Sauce,
  Paper,
  Fish,
  Bakery,
  Health,
  Other
}
