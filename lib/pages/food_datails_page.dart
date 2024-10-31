import 'package:flutter/material.dart';

class FoodDatailsPage extends StatefulWidget {
  final food;
  const FoodDatailsPage({super.key, this.food});

  @override
  State<FoodDatailsPage> createState() => _FoodDatailsPageState();
}

class _FoodDatailsPageState extends State<FoodDatailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
    );
  }
}
