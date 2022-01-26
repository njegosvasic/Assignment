import 'Product.dart';

class Cashier {
  double subtotal = 0;
  double total = 0;

  void PrintReceipt(List<Product> cart) {
    print("2021-06-14 12:34:56");
    print("\n\n ---Products---\n\n\n");

    for (Product prod in cart) {
      prod.printProduct();
      subtotal = subtotal + prod.subtotal!;
      total = total + prod.total!;
      print("");
    }
    print("-----------------------------------------------------\n");
    print("SUBTOTAL: \$" + subtotal.toStringAsFixed(2));
    print("DISCOUNT: - \$" + (subtotal - total).toStringAsFixed(2));
    print("\nTOTAL: \$" + total.toStringAsFixed(2));
  }
}
