class GroceryItem {
  final String title;
  final int quantity;
  final MeasureUnits measureUnits;
  final Category category;

  GroceryItem({
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
}
