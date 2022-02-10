import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final negara = [
    {'nama': 'Denmark', 'gambar': 'https://picsum.photos/250?image=9'},
  ];

  @override
  Widget build(BuildContext context) {
    Widget bagianList = ListView.builder(
        itemCount: negara.length,
        itemBuilder: (context, index) {
          return Card(
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Image.network(
                    '${negara[index]['gambar']}',
                    width: 125,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    '${negara[index]['nama']}',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ),
              ],
            ),
          );
        });
    return MaterialApp(
      title: 'Contoh ListView',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Contoh ListView'),
        ),
        body: Container(
          child: bagianList,
        ),
      ),
    );
  }
}
