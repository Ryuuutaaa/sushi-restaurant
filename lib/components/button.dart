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
      decoration: BoxDecoration(color: Color.fromARGB(212, 135, 81, 77), borderRadius: BorderRadius.circular(40)),
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center, // Memberikan jarak antara text dan ikon
        children: [
          // text
          Text(
            text,
            style: TextStyle(color: Colors.white),
          ),

          const SizedBox(
            width: 10,
          ),
          // icon
          Icon(
            Icons.arrow_forward,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
