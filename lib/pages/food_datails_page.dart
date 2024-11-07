import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:sushi/components/button.dart';
import 'package:sushi/models/food.dart';
import 'package:sushi/models/shop.dart';
import 'package:sushi/theme/colors.dart';

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
  // quantity
  int quantityCount = 0;

  // decrement quantity
  void decrementQuantity() {
    setState(() {
      if (quantityCount > 0) {
        quantityCount--;
      }
    });
  }

  // increment quantity
  void incrementQuantity() {
    setState(() {
      setState(() {
        quantityCount++;
      });
    });
  }

  // add to cart
  void addToChart() {
    // only add to ccart if there is something in the cart
    if (quantityCount > 0) {
      // get access to shop
      final shop = Provider.of<Shop>(context, listen: false);

      // add to cart
      shop.addToCart(widget.food, quantityCount);

      // left user know it was successfull
      showDialog(
        context: context,
        builder: (context) => const AlertDialog(
          content: Text("Successfully added to cart"),
        ),
      );
    }
  }

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

                const SizedBox(
                  height: 10,
                ),

                // food name
                Text(
                  widget.food.name,
                  style: GoogleFonts.dmSerifDisplay(fontSize: 28),
                ),

                const SizedBox(
                  height: 25,
                ),

                // description
                Text(
                  "Description",
                  style: TextStyle(color: Colors.grey[900], fontWeight: FontWeight.bold, fontSize: 18),
                ),

                const SizedBox(height: 10),

                Text(
                  "Delicately slicced, fresh atlantic salmon drapes elegantly over a pillow of perfactly seasoned sushi rice.",
                  style: TextStyle(color: Colors.grey[600], fontSize: 14, height: 2),
                )
              ],
            ),
          )),

          // price + quantity + add to cart button
          Container(
            color: primaryColor,
            padding: const EdgeInsets.all(25),
            child: Column(
              children: [
                // price + quantity
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // price
                    Text(
                      "\$" + widget.food.price,
                      style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
                    ),

                    // quantity
                    Row(
                      children: [
                        // minus
                        Container(
                          decoration: BoxDecoration(color: secondaryColor, shape: BoxShape.circle),
                          child: IconButton(onPressed: decrementQuantity, icon: const Icon(Icons.remove, color: Colors.white)),
                        ),

                        // quantity count
                        SizedBox(
                          width: 40,
                          child: Center(
                            child: Text(
                              quantityCount.toString(),
                              style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                          ),
                        ),

                        // plus buttob
                        Container(
                          decoration: BoxDecoration(color: secondaryColor, shape: BoxShape.circle),
                          child: IconButton(onPressed: incrementQuantity, icon: const Icon(Icons.add, color: Colors.white)),
                        )
                      ],
                    )
                  ],
                ),

                const SizedBox(
                  height: 35,
                ),

                // add to cart
                MyButton(text: "Add to chart", onTap: addToChart),
              ],
            ),
          )
        ],
      ),
    );
  }
}
