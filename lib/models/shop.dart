import 'package:boque_store/models/product.dart';
import 'package:flutter/material.dart';

class Shop extends ChangeNotifier {
  // Products for sale
  final List<Product> _shop = [
    // Product 1
    Product(
      name: "Product 1",
      price: 99.99,
      description: "Item description..",
    ),
    // Product 2
    Product(
      name: "Product 2",
      price: 99.99,
      description: "Item description..",
    ),
    // Product 3
    Product(
      name: "Product 3",
      price: 99.99,
      description: "Item description..",
    ),
    // Product 4
    Product(
      name: "Product 4",
      price: 99.99,
      description: "Item description..",
    )
  ];
  // User cart
  List<Product> _cart = [];

  // Get product list
  List<Product> get shop => _shop;

  // Get user list
  List<Product> get cart => _cart;

  // Add item to cart
  void addToCart(Product item) {
    _cart.add(item);
    notifyListeners();
  }

  // remove item from cart
  void removeFromCart(Product item) {
    _cart.remove(item);
    notifyListeners();
  }
}
