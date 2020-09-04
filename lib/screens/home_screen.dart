import 'package:flutter/material.dart';
import 'package:pet_love/const.dart';
import 'package:pet_love/screens/adoption_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  final List<Widget> _children = [Container(), AdoptionScreen()];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('Home Screen'),
      ),
    );
  }
}
