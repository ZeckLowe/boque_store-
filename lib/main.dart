import 'package:boque_store/pages/intro_page.dart';
import 'package:boque_store/pages/shop_page.dart';
import 'package:boque_store/themes/dark_mode.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const IntroPage(),
      theme: darkMode,
      routes: {'/shop_page': (context) => const ShopPage()},
    );
  }
}
