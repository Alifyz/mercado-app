class GroceryItem {
  final String title;
  final int quantity;
  final MeasureUnits measureUnits;

  GroceryItem({
    this.title,
    this.quantity,
    this.measureUnits,
  });
}

enum MeasureUnits {
  KG,
  LT,
  UNITS,
}
