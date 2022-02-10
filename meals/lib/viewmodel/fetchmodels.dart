import 'pa';
import 'package:http/http.dart' as http;
import 'package:flutter/foundation.dart';
import 'dart:convert';

Future<List<Meals>>fetchMenuDessert(http.Client client) async {
  final response = await client.get('https://www.themealdb.com/api/json/v1/1/filter.php?c=Dessert');
  return compute(parseMeals, response.body);
}
Future<List<Meals>>fetchMenuBreakfast(http.Client client) async {
  final response = await client.get('https://www.themealdb.com/api/json/v1/1/filter.php?c=Breakfast');
  return compute(parseMeals, response.body);
}
Future<List<Meals>>fetchMenuVegetarian(http.Client client) async {
  final response = await client.get('https://www.themealdb.com/api/json/v1/1/filter.php?c=Vegetarian');
  return compute(parseMeals, response.body);
}

List<Meals>parseMeals(String responseBody) {
  final parsed = jsonDecode(responseBody)['meals'].cast<Map<String, dynamic>>();
  return parsed.map<Meals>((json)=>Meals.fromJson(json)).toList();
}