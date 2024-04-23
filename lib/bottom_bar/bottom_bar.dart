import 'package:flutter/material.dart';
import '../../themes/colors.dart';
import '../screens/home_screen/contacts/library_screen.dart';
import '../screens/home_screen/home_screen.dart';
import '../screens/my_cards/card_screen.dart';
import '../screens/settings/settings_screen.dart';




class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex = 0;
  final List _pages = [

    const HomeScreen(),
    MyCardScreen(),
   const LibraryScreen(),
    SettingsScreen(),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColors.whiteColor,
        //Colors.grey.shade900,
        type: BottomNavigationBarType.fixed,
        iconSize: 23,

        selectedFontSize: 14,
        unselectedFontSize: 12,
        currentIndex: _currentIndex,
        selectedItemColor:  AppColors.primaryColor,
        unselectedItemColor: Colors.black,
        onTap: (v) {
          setState(() {
            _currentIndex = v;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),

          //BottomNavigationBarItem(icon: Icon(Icons.people),label: "People"),
          BottomNavigationBarItem(
              icon: Icon(Icons.card_giftcard_sharp), label: "My Cards"),
          BottomNavigationBarItem(icon: Icon(Icons.contact_page), label: "My contacts"),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: "Settings"),


        ],
      ),
      body: _pages[_currentIndex],
    );
  }
}
