import 'package:flutter/material.dart';
import 'package:meals/models/MakeUp.dart';
im

class DetailScreen extends StatelessWidget {
  final Meals meals;

  DetailScreen({Key key, this.meals}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Bagian Judul
    Widget bagianJudul = Container(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          Expanded(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Nomor : " + meals.number,
                                style: TextStyle(color: Colors.grey[700]),
                              ),
                              Text("Menu : " + meals.menu, style: TextStyle(fontSize: 25,color: Colors.grey[700])),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.greenAccent[700],
          title: Text(meals.menu),
        ),
        body: ListView(
          children: [
            Image.network(
              meals.gambar,
              width: 600,
              fit: BoxFit.cover,
            ),
            bagianJudul,
          ],
        ));
  }
}
