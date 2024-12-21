import 'package:flutter/material.dart';
import 'package:internship_task/models.dart';

class ProductProvider with ChangeNotifier {
  // Initial list of products
  List<Product> _products = [];

  // Getter for accessing the product list
  List<Product> get products => _products;

  // Add a new product
  void addProduct(Product product) {
    _products.add(product);
    notifyListeners(); // Notify UI to update
  }

  // Remove a product by ID
  void removeProduct(String id) {
    _products.removeWhere((product) => product.id == id);
    notifyListeners();
  }
}
