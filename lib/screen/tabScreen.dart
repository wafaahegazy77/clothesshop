import 'package:clothesshop/screen/products_screen.dart';
import 'package:clothesshop/widget/drawer_widget.dart';
import 'package:flutter/material.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({Key? key}) : super(key: key);

  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  int _currentIndex = 0;
  late List<Map<String, dynamic>> _pages;
  @override
  void initState() {
    _pages = [
      {
        'title': 'Products',
        'page': ProductsScreen(),
      },
      {
        'title': 'Favourite Products',
        // 'page': FavouritesScreen(),
      },
    ];
    super.initState();
  }

  void _changeIndex(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_pages[_currentIndex]['title']),
        actions: [
          Stack(
            children: [
              IconButton(
                icon: Icon(
                  Icons.shopping_cart,
                  size: 25.0,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
              Positioned(
                top: 2,
                right: 2,
                child: CircleAvatar(
                  radius: 10,
                  backgroundColor: Colors.redAccent,
                  child: Text(
                    '2',
                    style: TextStyle(
                      color: Colors.white70,
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
      drawer: DrawerWidget(),
      body: _pages[_currentIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _changeIndex,
        unselectedItemColor: Color(0xffcccccc),
        selectedItemColor: Color(0xffffffff),
        backgroundColor: Color(0xff14746f),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Products',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorite',
          ),
        ],
      ),
    );
  }
}
