class GroceryItem {
  final int id;
  final String title;
  final int quantity;
  final Category category;

  GroceryItem({
    this.id,
    this.title,
    this.quantity,
    this.category,
  });
}

enum Category {
  Meat,
  Milk,
  Cleaning,
  Fiber,
}
