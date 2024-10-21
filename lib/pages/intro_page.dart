import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(225, 138, 60, 55),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(
              height: 25,
            ),
            // shop name
            Text(
              "SUSHI MAN",
              style: GoogleFonts.dmSerifDisplay(fontSize: 28, color: Colors.white),
            ),

            const SizedBox(
              height: 35,
            ),

            // icon
            Image.asset("lib/images/salmon_egges.png"),

            // title

            // subtitle

            // get started button
          ],
        ),
      ),
    );
  }
}
