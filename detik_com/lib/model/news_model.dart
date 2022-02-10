import 'package:flutter/cupertino.dart';

class News{
  String author;
  String title;
  String description;
  String urlToImage;
  String content;

  News({this.author, this.title, this.description, this.urlToImage, this.content});

  factory News.fromJson(Map<String, dynamic> json) {
    return News (
      author: json['author'],
      title: json['title'],
      urlToImage: json['urlToImage'],
      description: json['description'],
      content: json['content'],
    );
  }
}