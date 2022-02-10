import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:moviemobile/model/news_model.dart';
import 'dart:async';
import 'package:flutter/foundation.dart';


Future<List<News>> fetchIndonesia(http.Client client) async {
  final response = await client.get('http://newsapi.org/v2/top-headlines?country=in&apiKey=adf81e109c9b440a8869672a1a607806');
  return compute(parseNews, response.body);
}

Future<List<News>> fetchItalia(http.Client client) async {
  final response = await client.get('http://newsapi.org/v2/top-headlines?country=it&apiKey=adf81e109c9b440a8869672a1a607806');
  return compute(parseNews, response.body);
}

Future<List<News>> fetchIndia(http.Client client) async {
  final response = await client.get('http://newsapi.org/v2/top-headlines?country=in&apiKey=adf81e109c9b440a8869672a1a607806');
  return compute(parseNews, response.body);
}

List<News>parseNews(String responseBody) {
  final parsed = jsonDecode(responseBody)['articles'].cast<Map<String, dynamic>>();
  return parsed.map<News>((json) => News.fromJson(json)).toList();
}