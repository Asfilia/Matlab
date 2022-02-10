import 'package:flutter/material.dart';
import 'package:detik_com/view/MyHomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    final appTitle = 'Detik.com';

    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        body: HomeScreen(number: appTitle),
      ),
    );
  }

}