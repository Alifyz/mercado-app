class GroceryItem {
  final int id;
  final String title;
  final int quantity;
  final MeasureUnits measureUnits;
  final Category category;

  GroceryItem({
    this.id,
    this.title,
    this.quantity,
    this.measureUnits,
    this.category,
  });
}

enum MeasureUnits {
  KG,
  LT,
  UNITS,
}

enum Category {
  Meat,
  Milk,
  Cleaning,
  Fiber,
}
