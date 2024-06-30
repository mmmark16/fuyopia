import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fuyopia/pages/bottom_navigator_bar_page/main_page.dart';
import 'package:fuyopia/pages/restaurant_page.dart';
import 'package:fuyopia/pages/bottom_navigator_bar_page/sale_page.dart';

import 'bottom_navigator_bar_page/cart_page.dart';
import 'bottom_navigator_bar_page/favorite_page.dart';
import 'bottom_navigator_bar_page/menu_page.dart';

class MyHomePage extends StatefulWidget {
  final int indexPage;
  MyHomePage({super.key, required this.indexPage,});


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  late int _selectedIndex = widget.indexPage;
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
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/bottom_bar_icon/home_unactive_icon.svg'),
            activeIcon: SvgPicture.asset('assets/bottom_bar_icon/home_active_icon.svg'),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/bottom_bar_icon/favourite_unactive_icon.svg'),
            activeIcon: SvgPicture.asset('assets/bottom_bar_icon/favourite_active_icon.svg'),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/bottom_bar_icon/menu_unactive_icon.svg'),
            activeIcon: SvgPicture.asset('assets/bottom_bar_icon/menu_active_icon.svg'),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/bottom_bar_icon/sale_unactive_icon.svg'),
            activeIcon: SvgPicture.asset('assets/bottom_bar_icon/sale_active_icon.svg'),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/bottom_bar_icon/cart_unactive_icon.svg'),
            activeIcon: SvgPicture.asset('assets/bottom_bar_icon/cart_active_icon.svg'),
            label: '',
          ),
        ],
      ),
    );
  }
}
