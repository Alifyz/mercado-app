class GroceryItem {
  final int id;
  final String title;
  final int quantity;
  final String category;
  final bool isChecked;
  final String listName;

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
}
