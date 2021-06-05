class Product {
  final String id;
  final String title;
  final String discription;
  final double price;
  final String imageURL;
  bool isFavorite;

  Product({
    required this.id,
    required this.title,
    required this.discription,
    required this.price,
    required this.imageURL,
    this.isFavorite = false,
  });

}