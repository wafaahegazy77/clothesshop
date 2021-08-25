import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 150,
                color: Theme.of(context).primaryColor,
              ),
              Positioned(
                bottom: 15,
                left: 10,
                child: Text(
                  'Menu',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
              )
            ],
          ),
          ListTile(
            onTap: () => Navigator.pushNamed(context, '/'),
            leading: Icon(Icons.shop),
            title: Text(
              'Products',
              style: TextStyle(
                color: Color(0xff555555),
                fontWeight: FontWeight.w500,
                fontSize: 18,
              ),
            ),
          ),
          Divider(
            thickness: 1.5,
            height: 0,
          ),
          ListTile(
            onTap: () {},
            leading: Icon(Icons.bookmark_border),
            title: Text(
              'Order',
              style: TextStyle(
                color: Color(0xff555555),
                fontWeight: FontWeight.w500,
                fontSize: 18,
              ),
            ),
          ),
          Divider(
            thickness: 1.5,
            height: 0,
          ),
          ListTile(
            onTap: () {},
            leading: Icon(Icons.edit),
            title: Text(
              'Manage Products',
              style: TextStyle(
                color: Color(0xff555555),
                fontWeight: FontWeight.w500,
                fontSize: 18,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
