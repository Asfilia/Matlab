import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:makeup_app/models/makeup_model.dart';
import 'dart:async';
import 'package:flutter/foundation.dart';

Future<List<MakeUp>> fetchBrandMaybelline(http.Client client) async {
  final response = await client.get('http://makeup-api.herokuapp.com/api/v1/products.json?brand=maybelline');
  return compute(parseClub, response.body);
}

Future<List<MakeUp>> fetchBrandMarcelle(http.Client client) async {
  final response = await client.get('http://makeup-api.herokuapp.com/api/v1/products.json?brand=marcelle');
  return compute(parseClub, response.body);
}

Future<List<MakeUp>> fetchBrandAnnabelle(http.Client client) async {
  final response = await client.get('http://makeup-api.herokuapp.com/api/v1/products.json?brand=annabelle');
  return compute(parseClub, response.body);
}

List<MakeUp>parseClub(String responseBody) {
  final parsed = jsonDecode(responseBody)['data'].cast<Map<String, dynamic>>();
  return parsed.map<Club>((json) => Club.fromJson(json)).toList();
}


