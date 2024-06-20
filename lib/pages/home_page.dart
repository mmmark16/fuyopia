import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:fuyopia/pages/bottom_navigator_bar_page/main_page.dart';
import 'package:fuyopia/pages/restaurant_page.dart';
import 'package:fuyopia/pages/bottom_navigator_bar_page/sale_page.dart';

import 'bottom_navigator_bar_page/cart_page.dart';
import 'bottom_navigator_bar_page/favorite_page.dart';
import 'bottom_navigator_bar_page/menu_page.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key, /*required selectedIndex*/});

  //int selectedIndex = 0;


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    MainPage(),
    FavoritePage(),
    MenuPage(),
    Test(),
    CartPage(),
  ];

  @override
  void initState() {
    // TODO: implement initState
    FlutterNativeSplash.remove();
    super.initState();
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color.fromRGBO(0, 32, 96, 1),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: _selectedIndex,
        //New
        onTap: _onItemTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              color: Colors.white,
            ),
            activeIcon: Icon(
              Icons.home,
              color: Colors.white,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite_border,
              color: Colors.white,
            ),
            activeIcon: Icon(
              Icons.favorite,
              color: Colors.white,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.lock_open,
              color: Colors.white,
            ),
            activeIcon: Icon(
              Icons.lock,
              color: Colors.white,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.error_outline,
              color: Colors.white,
            ),
            activeIcon: Icon(
              Icons.error,
              color: Colors.white,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_cart_outlined,
              color: Colors.white,
            ),
            activeIcon: Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}
