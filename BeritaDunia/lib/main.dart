import 'package:flutter/material.dart';
import 'package:moviemobile/view/MyHomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    final appTitle = 'Berita Dunia';

    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        body: HomeScreen(number: appTitle),
      ),
    );
  }

}