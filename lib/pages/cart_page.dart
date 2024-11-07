import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sushi/components/food_tile.dart';
import 'package:sushi/models/food.dart';
import 'package:sushi/models/shop.dart';
import 'package:sushi/theme/colors.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Shop>(
      builder: (context, value, child) => Scaffold(
        appBar: AppBar(
          title: const Text(
            "My cart",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: primaryColor,
        ),
        body: ListView.builder(
          itemCount: value.cart.length,
          itemBuilder: (context, index) {
            // get food from cart
            final Food food = value.cart[index];

            // get food name
            final String foodName = food.name;

            // get food price
            final String foodPrice = food.price;

            // return list
            return ListTile(
              title: Text(foodName),
              subtitle: Text(foodPrice),
            );
          },
        ),
      ),
    );
  }
}
