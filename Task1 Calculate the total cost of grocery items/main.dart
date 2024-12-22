void main() {
  const double taxRate = 0.10;
  Map<String, double> groceryItems = {
    "Apples": 2.99,
    "Bananas": 1.49,
    "Carrots": 0.99,
    "Bread": 3.49,
    "Milk": 2.89,
    "Eggs": 2.79,
    "Cheese": 4.99
  };
  double totalPrice = 0.0;
  groceryItems.forEach((name, price) {
    totalPrice += price;
  });

  double totalAfterTaxes = totalPrice + (totalPrice * taxRate);

  // toStringAsFixed to define the number of fractions after a point .
  print("Total Price Before Adding Taxes: \$ ${totalPrice.toStringAsFixed(2)}");
  print("Total Price After Adding Taxes \$ ${totalAfterTaxes.toStringAsFixed(2)}");
}