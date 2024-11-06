import 'package:sushi/models/food.dart';

class Shop {
  // food  menu
  final List<Food> foodMenu = [
    // salmon suhsi
    Food(name: "Salmon Sushi", price: "21.00", imagePath: "lib/images/salmon_sushi.png", rating: "4.9"),

    // tuna sushi
    Food(name: "Tuna Sushi", price: "23.00", imagePath: "lib/images/tuna.png", rating: "4.3"),
  ];
}
