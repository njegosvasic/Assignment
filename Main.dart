import 'Appliances.dart';
import 'Beverages.dart';
import 'Cashier.dart';
import 'Clothes.dart';
import 'Food.dart';
import 'Product.dart';

void main(List<String> args) {
  Food apples = new Food("Apples", "BrandA", 1.50, DateTime(2021, 6, 14), 2.45);
  Beverages milk =
      new Beverages("Milk", "BrandM", 0.99, DateTime(2021, 2, 2), 3);
  Clothes shirt = new Clothes("T-shirt", "BrandT", 15.99, "M", "violet", 2);
  Appliances laptop = new Appliances(
      "Laptop", "BrandL", 2345, "ModelL", DateTime(2021, 3, 3), 1.125, 1);

  List<Product> cart = [apples, milk, shirt, laptop];

  Cashier cashier = new Cashier();

  cashier.PrintReceipt(cart);
}
