import 'package:flutter/material.dart';
import 'package:pet_love/screens/adoption_screen.dart';
import 'package:pet_love/screens/home_screen.dart';

class NavigationScreen extends StatefulWidget {
  @override
  _NavigationScreenState createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  final List<Widget> _screens = [
    HomeScreen(),
    AdoptionScreen(),
    Scaffold(),
    Scaffold(),
    Scaffold()
  ];

  final Map<String, IconData> _icons = {
    'Home': Icons.home,
    'Adoption': Icons.help_outline,
    'Temp1': Icons.settings_system_daydream,
    'Temp2': Icons.file_download,
    'Temp3': Icons.linear_scale,
  };

  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        backgroundColor: Colors.black,
        selectedItemColor: Colors.grey,
        unselectedItemColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        items: _icons
            .map(
              (title, icon) => MapEntry(
                title,
                BottomNavigationBarItem(
                  title: Text(title),
                  icon: Icon(icon, size: 30.0),
                ),
              ),
            )
            .values
            .toList(),
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
