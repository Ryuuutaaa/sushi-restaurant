import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sushi/models/shop.dart';
import 'package:sushi/pages/intro_page.dart';

import 'pages/menu_page.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (contex) => Shop(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroPage(),
      routes: {
        '/intropage': (context) => const IntroPage(),
        '/menupage': (context) => const MenuPage(),
      },
    );
  }
}
