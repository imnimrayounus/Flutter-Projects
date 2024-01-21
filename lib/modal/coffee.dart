class Coffee {
  final String name;
  final String price; // Change the type to double
  final String imagePath;
  int quantity;

  Coffee({
    required this.name,
    required this.price,
    required this.imagePath,
    this.quantity = 1,
  });
}
