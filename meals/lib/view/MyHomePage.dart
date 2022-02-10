import 'package:meals/view/DetailScreen.dart';
import 'package:meals/models/MakeUp.dart';
import 'package:meals/viewmodel/fetchmodels.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomeScreen extends StatelessWidget {
  final String number;
  const HomeScreen({Key key, this.number}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: DefaultTabController(
          length: 3,
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.greenAccent[700],
              bottom: TabBar(
                tabs: [
                  Tab(child: Text("Seafood")),
                  Tab(child: Text("Breakfast")),
                  Tab(child: Text("Vegetarian"))
                ],
              ),
              title: Text(number),
            ),body: TabBarView(
            children: [
              FutureBuilder<List<Meals>>(
                future: fetchMenuDessert(http.Client(),),
                builder: (context, snapshot) {
                  if (snapshot.hasError) print(snapshot.error);

                  return snapshot.hasData
                  // Tampil listview
                      ? MealsList(meals: snapshot.data)
                      : Center(child: CircularProgressIndicator());
                },
              ),
              FutureBuilder<List<Meals>>(
                future: fetchMenuBreakfast(http.Client(),),
                builder: (context, snapshot) {
                  if (snapshot.hasError) print(snapshot.error);

                  return snapshot.hasData
                  // Tampil listview
                      ? MealsList(meals: snapshot.data)
                      : Center(child: CircularProgressIndicator());
                },
              ),
              FutureBuilder<List<Meals>>(
                future: fetchMenuVegetarian(http.Client()),
                builder: (context, snapshot) {
                  if (snapshot.hasError) print(snapshot.error);

                  return snapshot.hasData
                  // Tampil listview
                      ? MealsList(meals: snapshot.data)
                      : Center(child: CircularProgressIndicator());
                },
              ),
            ],
          ),
          ),
        ),
      ),
    );
  }
}

class MealsList extends StatelessWidget {
  final List<Meals> meals;

  MealsList({Key key, this.meals}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.all(10.0),
      itemCount: meals.length,
      itemBuilder: (context, index) {
        return new GestureDetector(
          // Navigasi saat klik
          onTap: () {
            Navigator.push(context, MaterialPageRoute(
                builder: (context) => DetailScreen(
                  meals: meals[index],
                )
            ));
          },

          child: new Card(
            child: new Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Image.network(
                    '${meals[index].gambar}',
                    width: 75,
                  ),
                ),

                // Expanded agar wrap overflow
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: Text(
                            '${meals[index].menu}',
                            style: Theme.of(context).textTheme.headline6,
                            softWrap: true,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}