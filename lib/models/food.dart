class Food {
  String name;
  String price;
  String imagePath;
  String rating;

  Food({required this.name, required this.price, required this.imagePath, required this.rating});

  String get __name => name;
  String get __price => price;
  String get __imagePath => imagePath;
  String get __rating => rating;
}
