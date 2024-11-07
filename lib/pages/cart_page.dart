import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
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
          itemBuilder: (context, index) {
            // get food from cart

            // get food name

            // get food price

            // return list
          },
        ),
      ),
    );
  }
}
