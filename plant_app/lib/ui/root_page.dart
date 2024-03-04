import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/ui/screens/cart_page.dart';
import 'package:plant_app/ui/screens/favourite_page.dart';
import 'package:plant_app/ui/screens/home_page.dart';
import 'package:plant_app/ui/screens/profile_page.dart';

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int _bottomNavIndex = 0;
  List<Widget> pages = const [
    HomePage(),
    FavouritePage(),
    CartPage(),
    ProfilePage(),
  ];

  // List of the pages icons
  List<IconData> iconList = [
    Icons.home,
    Icons.favorite,
    Icons.shopping_cart,
    Icons.person
  ];

  List<String> titleList = ['Home', 'Favourite', 'Cart', 'profile'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              titleList[_bottomNavIndex],
              style: TextStyle(
                  color: Constants.blackColor,
                  fontWeight: FontWeight.w500,
                  fontSize: 24),
            )
          ],
        ),
      ),
    );
  }
}
