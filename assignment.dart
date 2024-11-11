void main() {
  // Step 1: Define item prices
  List<double> itemPrices = [5.0, 15.0, 20.0, 30.0, 8.0];
  print("Original Prices: $itemPrices");

  // Step 2: Anonymous function to filter out items under $10
  final filterCheapItems = (List<double> prices, double threshold) =>
      prices.where((price) => price >= threshold).toList();

  List<double> filteredPrices = filterCheapItems(itemPrices, 10.0);
  print("Filtered Prices (items >= \$10): $filteredPrices");

  // Step 3: Higher-order function to apply a discount
  List<double> applyDiscount(List<double> prices, double discountPercent) =>
      prices.map((price) => price * (1 - discountPercent / 100)).toList();

  const discountPercent = 10.0; // Apply 10% discount
  List<double> discountedPrices = applyDiscount(filteredPrices, discountPercent);
  print("Prices after $discountPercent% discount: $discountedPrices");

  // Step 4: Standard function to calculate total price with optional tax parameter
  double calculateTotal(List<double> prices, {double taxRate = 0.08}) =>
      prices.reduce((a, b) => a + b) * (1 + taxRate);

  double totalPriceWithTax = calculateTotal(discountedPrices);
  print("Total Price with 8% Tax: \$${totalPriceWithTax.toStringAsFixed(2)}");

  // Step 5: Recursive function to calculate factorial-based discount
  int calculateFactorial(int n) => n <= 1 ? 1 : n * calculateFactorial(n - 1);

  double calculateFactorialDiscount(int itemCount, double price) =>
      price * (1 - calculateFactorial(itemCount) / 100);

  final itemCount = discountedPrices.length;
  final factorialDiscountPercentage = calculateFactorial(itemCount);
  final finalTotalWithFactorialDiscount =
      calculateFactorialDiscount(itemCount, totalPriceWithTax);

  print(
    "Final Total with Factorial Discount (${itemCount}!% = ${factorialDiscountPercentage}%): \$${finalTotalWithFactorialDiscount.toStringAsFixed(2)}",
  );
}