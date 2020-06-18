import 'package:flutter/material.dart';
import 'package:wine_app/models/product.dart';

class ProductViewModel with ChangeNotifier {
  List<Product> _productList = products;

  List<Product> get productPresentation => _productList;

  void allProductPresent() {
    _productList = products;
    notifyListeners();
  }

  void getProductPresentByCategory(Category category) {
    _productList =
        products.where((element) => (element.category == category)).toList();
    notifyListeners();
  }
}
