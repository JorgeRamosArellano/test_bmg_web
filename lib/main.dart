import 'package:flutter/material.dart';
import 'package:test_bmg_web/screens/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'W E',
      home: HomeScreen(),
    );
  }
}

