import 'package:flutter/material.dart';
import 'package:detik_com/model/news_model.dart';


class DetailScreen extends StatelessWidget {
  final News news;

  DetailScreen({Key key, this.news}) : super(key: key);

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
                                "Author" + news.author,
                                style: TextStyle(color: Colors.grey),
                              ),
                              Text("Description : " + news.description, style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold, color: Colors.black)),
                              Text("Content :" + news.content, style: TextStyle(fontSize: 15, color: Colors.black)),
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
          backgroundColor: Colors.blue[700],
          title: Text(news.title),
        ),
        body: ListView(
          children: [
            Image.network(
              news.urlToImage,
              width: 600,
              fit: BoxFit.cover,
            ),
            bagianJudul,
          ],
        ));
  }
}
