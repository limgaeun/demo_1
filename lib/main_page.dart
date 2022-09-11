import 'package:flutter/material.dart';
import 'package:frontend/community/view/pages/post/community_page.dart';
import 'package:frontend/map/map_page.dart';
import 'package:frontend/screen/home_screen.dart';
import 'package:frontend/widget/bottom_bar.dart';

class MainPage extends StatefulWidget {

  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  late TabController controller;

  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'App',
        theme: ThemeData(
          brightness: Brightness.light,
          primaryColor: Colors.blue,
        ),
        home: DefaultTabController(
          length: 3,
          child: Scaffold(
            body: TabBarView(
              physics: NeverScrollableScrollPhysics(),
              children: <Widget>[
                HomeScreen(),
                MapPage(),
                CommunityPage(),
              ],
            ),
            bottomNavigationBar: Bottom(),
          ),
        )
    );
  }
}