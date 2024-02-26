import 'package:flutter/material.dart';
import 'package:boque_store/models/product.dart';

class MyProductTile extends StatelessWidget {
  final Product product;

  const MyProductTile({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        // Product Image
        Icon(Icons.favorite),

        // Product Name
        Text(product.name),

        // Product description
        Text(product.description),

        // Product price + add to cart button
        Text(product.price.toStringAsFixed(2)),
      ]),
    );
  }
}
