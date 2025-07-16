class CardsInformation {
  final String imageUrl;
  final String name;
  final String description;
  final double price;
  final bool isPhone;

  CardsInformation({
    required this.name,
    required this.description,
    required this.price,
    required this.imageUrl,
    this.isPhone =false,
  });
}
