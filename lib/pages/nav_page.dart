import 'package:assignment17/pages/home_page.dart';
import 'package:assignment17/pages/profile_page.dart';
import 'package:assignment17/pages/search_page.dart';
import 'package:flutter/material.dart';

class NavPage extends StatefulWidget {
  const NavPage({super.key});

  @override
  State<NavPage> createState() => _NavPageState();
}

class _NavPageState extends State<NavPage> {

  int _selectedIndex = 0;
  final _pages = [const HomePage(), const SearchPage(), const ProfilePage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purpleAccent,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.star, color: Colors.white),
            SizedBox(width: 8), // Add some spacing between the icon and the text
            Text(
              'Creative App',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
        centerTitle: true, // Optional, centers the Row in the AppBar
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index){
          setState(() {
            _selectedIndex = index;
          });
        },
        selectedItemColor: Colors.purpleAccent,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
