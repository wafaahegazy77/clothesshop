import 'package:clothesshop/provider/product.dart';
import 'package:clothesshop/widget/product_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductsScreen extends StatelessWidget {
  static const routeName = 'products_screen';
  const ProductsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final productsData = Provider.of<Products>(context, listen: false);
    final products = productsData.dummyProducts;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView.builder(
          itemCount: products.length,
          itemBuilder: (BuildContext context, int i) =>
              ChangeNotifierProvider.value(
            value: products[i],
            child: ProductItem(),
          ),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 2,
          ),
        ),
      ),
    );
  }
}
