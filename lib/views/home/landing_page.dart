import 'package:digital_library/views/home/home_view.dart';
import 'package:digital_library/views/home/library_view.dart';
import 'package:digital_library/views/home/settings_view.dart';
import 'package:digital_library/views/home/wishlist_view.dart';
import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';


class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildPages(),
      bottomNavigationBar: BottomNavigationBar(),
    );
  }

  Widget BottomNavigationBar() {
    final inactiveColor = Colors.grey;

    return BottomNavyBar(
      containerHeight: 50,
      selectedIndex: index,
      onItemSelected: (index) => setState(() => this.index = index),
      items: <BottomNavyBarItem>[
        BottomNavyBarItem(
          icon: Icon(Icons.apps),
          title: Text('Home'),
          activeColor: Colors.blue,
          inactiveColor: inactiveColor,
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          icon: Icon(Icons.book),
          title: Text('Library'),
          activeColor: Colors.yellow,
          inactiveColor: inactiveColor,
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          icon: Icon(Icons.favorite),
          title: Text('Wishlist'),
          activeColor: Colors.green,
          inactiveColor: inactiveColor,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  Widget buildPages() {
    switch (index) {
      case 1:
        return LibraryView();
      case 2:
        return WishlistView();
      case 0:
      default:
        return HomeView();
    }
  }
}
