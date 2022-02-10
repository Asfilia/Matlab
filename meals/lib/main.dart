import 'package:flutter/material.dart';
import './view/MyHomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
 Widget build(BuildContext context) {
   final appTitle = 'Canadians Meals'; 
   
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        body: HomeScreen(number: appTitle),
      ),
    );
  }
 
}
