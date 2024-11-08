import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sushi/components/button.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(225, 138, 60, 55),
      body: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: Image.asset("lib/images/salmon_egges.png"),
            ),

            const SizedBox(
              height: 25,
            ),

            // title
            Text(
              "THE TASTE OF JAPANESE FOOD",
              style: GoogleFonts.dmSerifDisplay(fontSize: 44, color: Colors.white),
            ),

            const SizedBox(
              height: 10,
            ),

            // subtitle
            Text(
              "Feel the taste of the most popular Japanese food fromm anywhere and anytime",
              style: TextStyle(color: Colors.grey[300], height: 2),
            ),

            const SizedBox(
              height: 25,
            ),

            // get started button
            MyButton(
              text: "Get Started",
              onTap: () {
                // go to menu navigation
                Navigator.pushNamed(context, "/menupage");
              },
            )
          ],
        ),
      ),
    );
  }
}
