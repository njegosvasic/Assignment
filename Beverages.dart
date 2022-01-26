import 'Food.dart';

class Beverages extends Food {
  Beverages(String name, String brand, double price, DateTime expDate,
      double quantity)
      : super('', '', 0.0, DateTime(2021, 6, 14), 0.0) {
    this.name = name;
    this.brand = brand;
    this.price = price;
    this.expDate = expDate;
    this.quantity = quantity;
    this.subtotal = 0;
    this.total = 0;
  }
}
