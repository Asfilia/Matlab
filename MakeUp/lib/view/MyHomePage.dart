import 'package:moviemobile/view/detailpage.dart';
import 'package:moviemobile/model/makeup_model.dart';
import 'package:moviemobile/viewmodel/fetchmakeup.dart';
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
              backgroundColor: Colors.redAccent[700],
              bottom: TabBar(
                tabs: [
                  Tab(child: Text("Maybelline")),
                  Tab(child: Text("Annabelle")),
                  Tab(child: Text("Marcelle"))
                ],
              ),
              title: Text(number),
            ),body: TabBarView(
            children: [
              FutureBuilder<List<MakeUp>>(
                future: fetchBrandMaybelline(http.Client(),),
                builder: (context, snapshot) {
                  if (snapshot.hasError) print(snapshot.error);

                  return snapshot.hasData
                  // Tampil listview
                      ? MakeUpList(makeup: snapshot.data)
                      : Center(child: CircularProgressIndicator());
                },
              ),
              FutureBuilder<List<MakeUp>>(
                future: fetchBrandAnnabelle(http.Client(),),
                builder: (context, snapshot) {
                  if (snapshot.hasError) print(snapshot.error);

                  return snapshot.hasData
                  // Tampil listview
                      ? MakeUpList(makeup: snapshot.data)
                      : Center(child: CircularProgressIndicator());
                },
              ),
              FutureBuilder<List<MakeUp>>(
                future: fetchBrandMarcelle(http.Client()),
                builder: (context, snapshot) {
                  if (snapshot.hasError) print(snapshot.error);

                  return snapshot.hasData
                  // Tampil listview
                      ? MakeUpList(makeup: snapshot.data)
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

class MakeUpList extends StatelessWidget {
  final List<MakeUp> makeup;

  MakeUpList({Key key, this.makeup}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.all(10.0),
      itemCount: makeup.length,
      itemBuilder: (context, index) {
        return new GestureDetector(
          // Navigasi saat klik
          onTap: () {
            Navigator.push(context, MaterialPageRoute(
                builder: (context) => DetailScreen(
                  makeup: makeup[index],
                )
            ));
          },

          child: new Card(
            child: new Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Image.network(
                    '${makeup[index].image_link}',
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
                            '${makeup[index].name}',
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