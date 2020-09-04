import 'package:flutter/material.dart';
import 'package:pet_love/screens/navagation_screen.dart';
import 'package:pet_love/screens/screens.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          //scaffoldBackgroundColor: Colors.greenAccent,
          ),
      home: NavigationScreen(),
    );
  }
}
