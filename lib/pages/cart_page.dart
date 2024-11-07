import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sushi/components/food_tile.dart';
import 'package:sushi/models/food.dart';
import 'package:sushi/models/shop.dart';
import 'package:sushi/theme/colors.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  // remove from cart
  void removeFromCart() {}

  @override
  Widget build(BuildContext context) {
    return Consumer<Shop>(
      builder: (context, value, child) => Scaffold(
        backgroundColor: primaryColor,
        appBar: AppBar(
          title: const Text(
            "My cart",
            style: TextStyle(color: Colors.white),
          ),
          elevation: 0,
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
            return Container(
              decoration: BoxDecoration(color: secondaryColor),
              margin: const EdgeInsets.only(left: 20, top: 20, right: 20),
              child: ListTile(
                title: Text(
                  foodName,
                  style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  foodPrice,
                  style: TextStyle(color: Colors.grey[200], fontWeight: FontWeight.bold),
                ),
                trailing: IconButton(
                  onPressed: removeFromCart,
                  icon: const Icon(
                    Icons.delete,
                    color: Colors.red,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
