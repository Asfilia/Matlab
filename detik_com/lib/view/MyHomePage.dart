import 'package:detik_com/view/DetailPage.dart';
import 'package:detik_com/model/news_model.dart';
import 'package:detik_com/viewmodel/fetchnews.dart';
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
              backgroundColor: Colors.blue[700],
              bottom: TabBar(
                tabs: [
                  Tab(child: Text("Healty")),
                  Tab(child: Text("Entertaiment")),
                  Tab(child: Text("Technology"))
                ],
              ),
              title: Text(number),
            ),body: TabBarView(
            children: [
              FutureBuilder<List<News>>(
                future: fetchHealty(http.Client(),),
                builder: (context, snapshot) {
                  if (snapshot.hasError) print(snapshot.error);

                  return snapshot.hasData
                  // Tampil listview
                      ? NewsList(news: snapshot.data)
                      : Center(child: CircularProgressIndicator());
                },
              ),
              FutureBuilder<List<News>>(
                future: fetchEntertaiment(http.Client(),),
                builder: (context, snapshot) {
                  if (snapshot.hasError) print(snapshot.error);

                  return snapshot.hasData
                  // Tampil listview
                      ? NewsList(news: snapshot.data)
                      : Center(child: CircularProgressIndicator());
                },
              ),
              FutureBuilder<List<News>>(
                future: fetchTechnology( http.Client()),
                builder: (context, snapshot) {
                  if (snapshot.hasError) print(snapshot.error);

                  return snapshot.hasData
                  // Tampil listview
                      ? NewsList(news: snapshot.data)
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

class NewsList extends StatelessWidget {
  final List<News> news;

  NewsList({Key key, this.news}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.all(10.0),
      itemCount: news.length,
      itemBuilder: (context, index) {
        return new GestureDetector(
          // Navigasi saat klik
          onTap: () {
            Navigator.push(context, MaterialPageRoute(
                builder: (context) => DetailScreen(
                  news: news[index],
                )
            ));
          },

          child: new Card(
            child: new Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Image.network(
                    '${news[index].urlToImage}',
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
                            '${news[index].title}',
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