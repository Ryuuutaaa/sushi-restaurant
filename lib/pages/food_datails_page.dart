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
          Expanded(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: ListView(
              children: [
                // image
                Image.asset(
                  widget.food.imagePath,
                  height: 200,
                ),

                const SizedBox(
                  height: 25,
                ),

                // rating
                Row(
                  children: [
                    // start icon
                    Icon(
                      Icons.star,
                      color: Colors.yellow[800],
                    ),

                    const SizedBox(
                      width: 5,
                    ),

                    // reting number
                    Text(
                      widget.food.rating,
                      style: TextStyle(color: Colors.grey[900], fontWeight: FontWeight.bold),
                    )
                  ],
                ),

                SizedBox(
                  height: 10,
                ),

                // food name

                // description
              ],
            ),
          ))

          // price + quantity + add to cart button
        ],
      ),
    );
  }
}
