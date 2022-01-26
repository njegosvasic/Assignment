import 'Product.dart';

class Appliances implements Product {
  String? model;
  DateTime? producionDate;
  double? weight;
  Appliances(String name, String brand, double price, String model,
      DateTime productionDate, double weight, double quantity) {
    this.name = name;
    this.brand = brand;
    this.price = price;
    this.model = model;
    this.producionDate = producionDate;
    this.weight = weight;
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
    if (DateTime.now().weekday > 5 && this.price! > 999) {
      print("#discount 5% -\$" +
          ((this.price! - this.price! * 0.95) * this.quantity!)
              .toStringAsFixed(2) +
          "\n");
      this.price = this.price! * 0.95;
    }
  }

  @override
  void printProduct() {
    print(name! + " " + brand! + " " + model!);
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
