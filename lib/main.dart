import 'package:clothesshop/screen/products_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'screen/tabScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: null,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Clothes shop',
        theme: ThemeData(
          primaryColor: Color(0xff036666),
          accentColor: Color(0xff14746f),
          canvasColor: Color(0xffedf7f1),
        ),
        routes: {
          '/': (_) => TabsScreen(), // Home page
          ProductsScreen.routeName: (_) => ProductsScreen(),
          // CategoryMealsScreen.routeName: (_) => CategoryMealsScreen(),
        },
      ),
    );
  }
}
