import 'package:fashion/views/bashboard/bashboard.dart';
import 'package:fashion/views/screens/Search.dart';
import 'package:fashion/views/screens/Wishlist.dart';
import 'package:fashion/views/screens/newArrivals.dart';
import 'package:fashion/views/screens/profile.dart';
import 'package:fashion/views/screens/shopWomen.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    // PageOne(),
    DashbordScreen(),
    Search(),
    Wishlist(),
    // NewArrivals(),
    ShopWomen(),
    Profile()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedIconTheme: null,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: SizedBox(
              width: 24.0,
              height: 24.0,
              child: Icon(
                Icons.home,
                color: _selectedIndex == 0 ? Colors.black : Colors.grey,
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SizedBox(
              width: 24.0,
              height: 24.0,
              child: Icon(
                Icons.search,
                color: _selectedIndex == 1 ? Colors.black : Colors.grey,
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SizedBox(
              width: 24.0,
              height: 24.0,
              child: Icon(
                Icons.shopping_bag_outlined,
                color: _selectedIndex == 2 ? Colors.black : Colors.grey,
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SizedBox(
              width: 24.0,
              height: 24.0,
              child: Icon(
                Icons.favorite_outline_sharp,
                color: _selectedIndex == 3 ? Colors.black : Colors.grey,
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SizedBox(
              width: 24.0,
              height: 24.0,
              child: Icon(
                Icons.person,
                color: _selectedIndex == 4 ? Colors.black : Colors.grey,
              ),
            ),
            label: '',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}

class PageOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Page One'),
    );
  }
}

class PageTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Page Two'),
    );
  }
}

class PageThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Page Three'),
    );
  }
}
