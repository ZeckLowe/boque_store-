import 'package:flutter/material.dart';
import '../pages/shop_page.dart';

class navigator extends StatelessWidget {
  const navigator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bottom NavBar Demo',
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}
