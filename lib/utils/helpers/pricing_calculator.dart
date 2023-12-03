class TPricingCalcutater {
  // calculate the price based on tax adn shipping
  static double calculateTotalPrice(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;

    double shippingCost = getShippingCost(location);

    double totalPrice = productPrice + taxAmount + shippingCost;
    return totalPrice;
  }

  // calculate shipping cost
  static String calculateShippingCost(double productPrice, String location) {
    double shippingCost = getShippingCost(location);
    return shippingCost.toStringAsFixed(2);
  }

  // calclute tax
  static String calculateTax(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;
    return taxAmount.toStringAsFixed(2);
  }

  static double getTaxRateForLocation(String location) {
    // Lookup the tax rate for the given location from a tax rate database or API.
    // Return the appropriate tax rate.
    return 0.10; // exampl etaxt rate of 10%
  }

  static double getShippingCost(String location) {
    // Lookup the shipping cost fo the given location using a tax rate database or API.
    // Calcutate the shipping cost based on various factors like distance, weight etc
    return 5.00;
  }

  // -- sum all cart values and return total amount
  // static double calcualteCartTotal(CarModel cart){
  // return cart.items.map((el) => e.price).fold(o, (previousPrice, currentPrice) => previousPrice + (CrurrentPric ?? 0));}
}
