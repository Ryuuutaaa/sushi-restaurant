import 'package:flutter/material.dart';
import 'package:sushi/models/food.dart';

class FoodDatailsPage extends StatefulWidget {
  final Food food;

  const FoodDatailsPage({
    super.key,
    required this.food,
  });

  @override
  State<FoodDatailsPage> createState() => _FoodDatailsPageState();
}

class _FoodDatailsPageState extends State<FoodDatailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.grey[900],
      ),
      body: Column(
        children: [
          // listview of food details

          // price + quantity + add to cart button
        ],
      ),
    );
  }
}
