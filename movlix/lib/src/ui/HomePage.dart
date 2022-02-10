import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movlix/src/constant/global.dart';
import 'package:movlix/src/ui/widgets/category.dart';
import 'package:movlix/src/ui/widgets/movie_list.dart';
import 'package:movlix/src/utils/my_scroll_behavior.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.network(
            'https://logos-download.com/wp-content/uploads/2016/03/Netflix_logo.png',
            width: 100),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
        color: Colors.white,
        child: ScrollConfiguration(
          behavior: MyScrollBehaviour(),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                MovieCategory(),
                Padding(padding: EdgeInsets.only(top: 10)),
                _buildMyList(context),
                Padding(padding: EdgeInsets.only(top: 10)),
                _buildPopularList(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _buildMyList(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Text(
                    "My List",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Icon(
                  Icons.arrow_forward,
                  color: Colors.black,
                )
              ],
            ),
          ),
          MovieListView(type: MovieListType.topRated, onItemInteraction: null,)
        ],
      ),
    );
  }

  _buildPopularList(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Text(
                    "Popular on Netflix",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Icon(
                  Icons.arrow_forward,
                  color: Colors.black,
                )
              ],
            ),
          ),
          MovieListView(type: MovieListType.topRated, onItemInteraction: null,)
        ],
      ),
    );
  }
}
