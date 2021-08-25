import 'package:flutter/material.dart';

class Product with ChangeNotifier {
  final String id, title, img, description;
  final double price;
  bool isFav;

  Product({
    required this.id,
    required this.title,
    required this.img,
    required this.description,
    required this.price,
    this.isFav = false,
  });

  void _setFavValue(bool newVal) {
    isFav = newVal;
    notifyListeners();
  }

  toggleFav(String userId) {
    final oldFav = isFav;
    isFav = !isFav;
    notifyListeners();
  }
}

class Products with ChangeNotifier {
  List<Product> get dummyProducts => [..._dummyProducts];

  final List<Product> _favoriteProducts = [];
  List<Product> get favoriteProducts => [..._favoriteProducts];

  void addProduct(String id) {
    _favoriteProducts
        .add(_dummyProducts.firstWhere((element) => element.id == id));
    notifyListeners();
  }

  void removeProduct(String id) {
    _favoriteProducts.removeWhere((element) => element.id == id);
    notifyListeners();
  }

  final List<Product> _dummyProducts = [
    Product(
      id: '1',
      title: 'Product name',
      img:
          'https://images.pexels.com/photos/5405623/pexels-photo-5405623.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
      description: 'This is description of this product',
      price: 15.0,
    ),
  ];
}
