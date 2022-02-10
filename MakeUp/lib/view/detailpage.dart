import 'package:flutter/material.dart';
import 'package:moviemobile/model/makeup_model.dart';


class DetailScreen extends StatelessWidget {
  final MakeUp makeup;

  DetailScreen({Key key, this.makeup}) : super(key: key);

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
                                "Brand : " + makeup.brand,
                                style: TextStyle(color: Colors.grey[700]),
                              ),
                              Text("Name : " + makeup.name, style: TextStyle(fontSize: 15,color: Colors.redAccent[700])),
                              Text("Price : " + makeup.price, style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black)),
                              Text("Deskripsi : "+makeup.description, style: TextStyle(fontSize: 12,color: Colors.grey[700])),
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
          backgroundColor: Colors.redAccent[700],
          title: Text(makeup.name),
        ),
        body: ListView(
          children: [
            Image.network(
              makeup.image_link,
              width: 600,
              fit: BoxFit.cover,
            ),
            bagianJudul,
          ],
        ));
  }
}
