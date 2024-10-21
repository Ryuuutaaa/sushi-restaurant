import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  const MyButton({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Color.fromARGB(212, 135, 81, 77)),
      padding: EdgeInsets.all(20),
      child: Row(
        children: [
          // text
          Text(
            text,
            style: TextStyle(color: Colors.white),
          ),

          // icon
          Icon(Icons.arrow_forward),
        ],
      ),
    );
  }
}
