import 'package:boque_store/component/my_product_tile.dart';
import 'package:boque_store/models/shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    // access producst in shop
    final products = context.watch<Shop>().shop;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text(
          "Shop Page",
        ),
      ),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          // get each individual product from shop
          final product = products[index];

          // return as a product tile UI
          return MyProductTile(product: product);
        },
      ),
    );
  }
}
