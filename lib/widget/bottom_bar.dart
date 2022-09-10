import 'package:flutter/material.dart';

class Bottom extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueAccent,
      child: Container(
        height: 80,
        child: TabBar(
          labelColor: Colors.white,
          unselectedLabelColor: Colors.white60,
          indicatorColor: Colors.transparent,
          tabs: <Widget>[
            Tab(
              icon: Icon(
                Icons.home,
                size: 30,
              ),
              child: Text(
                'Home',
                style: TextStyle(fontSize: 11),
              ),
            ),
            Tab(
              icon: Icon(
                Icons.cruelty_free,
                size: 30,
              ),
              child: Text(
                'Mission',
                style: TextStyle(fontSize: 11),
              ),
            ),
            Tab(
              icon: Icon(
                Icons.edit_outlined,
                size: 30,
              ),
              child: Text(
                'Community',
                style: TextStyle(fontSize: 11),
              ),
            ),
            Tab(
              icon: Icon(
                Icons.account_circle_outlined,
                size: 30,
              ),
              child: Text(
                'My page',
                style: TextStyle(fontSize: 11),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
