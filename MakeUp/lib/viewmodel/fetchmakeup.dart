import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:moviemobile/model/makeup_model.dart';
import 'dart:async';
import 'package:flutter/foundation.dart';


Future<List<MakeUp>> fetchBrandMaybelline(http.Client client) async {
  final response = await client.get('http://makeup-api.herokuapp.com/api/v1/products.json?brand=maybelline');
  return compute(parseMakeUp, response.body);
}

Future<List<MakeUp>> fetchBrandMarcelle(http.Client client) async {
  final response = await client.get('http://makeup-api.herokuapp.com/api/v1/products.json?brand=marcelle');
  return compute(parseMakeUp, response.body);
}

Future<List<MakeUp>> fetchBrandAnnabelle(http.Client client) async {
  final response = await client.get('http://makeup-api.herokuapp.com/api/v1/products.json?brand=annabelle');
  return compute(parseMakeUp, response.body);
}

List<MakeUp>parseMakeUp(String responseBody) {
  final parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();
  return parsed.map<MakeUp>((json) => MakeUp.fromJson(json)).toList();
}