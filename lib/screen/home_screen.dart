import 'package:flutter/material.dart';
import 'package:frontend/widget/box_slider.dart';
import 'package:frontend/widget/profile_map.dart';
import '../model/poster_model.dart';

class HomeScreen extends StatefulWidget {
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Poster> poster = [
    Poster.fromMap({
      'title' : 'poster 1',
      'keyword' : 'a/b/c',
      'poster' : 'test_poster_1.png'
    }),
    Poster.fromMap({
      'title' : 'poster 2',
      'keyword' : 'a/b/c',
      'poster' : 'test_poster_2.jpg'
    }),
    Poster.fromMap({
      'title' : 'poster 3',
      'keyword' : 'a/b/c',
      'poster' : 'test_poster_3.jpg'
    }),
    Poster.fromMap({
      'title' : 'poster 4',
      'keyword' : 'a/b/c',
      'poster' : 'test_poster_4.jpg'
    }),
    Poster.fromMap({
      'title' : 'poster 5',
      'keyword' : 'a/b/c',
      'poster' : 'test_poster_5.jpg'
    }),
  ];
  @override
  void initState(){
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  child: Text('Test App'),
                ),
                Container(
                  child: Row(
                    children: <Widget>[
                      TextButton(onPressed: (){}, child: Text('log in', style: TextStyle(color: Colors.white),)),
                      TextButton(onPressed: (){}, child: Text('sign in', style: TextStyle(color: Colors.white),)),
                    ],
                  ),
                ),
              ],
            ),
          ),
          elevation: 0,
        ),
        body: ListView(
          children: <Widget>[
            ProfileMap(),
            BoxSlider(poster: poster),
          ],
        )
    );
  }
}
