import 'Product.dart';

class Clothes implements Product {
  String? size;
  String? color;
  Clothes(String name, String brand, double price, String size, String color,
      double quantity) {
    this.name = name;
    this.brand = brand;
    this.price = price;
    this.size = size;
    this.color = color;
    this.quantity = quantity;
    this.subtotal = 0;
    this.total = 0;
  }

  @override
  String? brand;

  @override
  String? name;

  @override
  double? price;

  @override
  double? quantity;

  @override
  double? subtotal;

  @override
  double? total;

  @override
  void calculateDiscount() {
    double totalPrice = price! * quantity!;
    if (DateTime.now().weekday <= 5) {
      print("#discount 10% -" +
          (totalPrice - totalPrice * 0.9).toStringAsFixed(2) +
          "\n");
      this.price = this.price! * 0.9;
    }
  }

  @override
  void printProduct() {
    print(name! + " " + brand! + " " + size! + " " + color!);
    print(quantity.toString() +
        " x \$" +
        price.toString() +
        " = \$" +
        (quantity! * price!).toStringAsFixed(2));
    subtotal = subtotal! + price! * quantity!;
    calculateDiscount();
    total = total! + price! * quantity!;
  }
}
