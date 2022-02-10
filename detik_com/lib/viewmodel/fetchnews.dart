import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:detik_com/model/news_model.dart';
import 'dart:async';
import 'package:flutter/foundation.dart';


Future<List<News>> fetchHealty(http.Client client) async {
  final response = await client.get('https://newsapi.org/v2/top-headlines?category=health&apiKey=9e420d8265994cb896eb030a3e4f3684');
  return compute(parseNews, response.body);
}

Future<List<News>> fetchEntertaiment(http.Client client) async {
  final response = await client.get('https://newsapi.org/v2/top-headlines?category=entertainment&apiKey=9e420d8265994cb896eb030a3e4f3684');
  return compute(parseNews, response.body);
}

Future<List<News>> fetchTechnology(http.Client client) async {
  final response = await client.get('https://newsapi.org/v2/top-headlines?category=technology&apiKey=9e420d8265994cb896eb030a3e4f3684');
  return compute(parseNews, response.body);
}

List<News>parseNews(String responseBody) {
  final parsed = jsonDecode(responseBody)['articles'].cast<Map<String, dynamic>>();
  return parsed.map<News>((json) => News.fromJson(json)).toList();
}