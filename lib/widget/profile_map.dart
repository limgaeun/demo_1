import 'package:flutter/material.dart';
import 'package:frontend/map/map_page.dart';

class ProfileMap extends StatefulWidget {
  @override
  _ProfileMapState createState() => _ProfileMapState();
}

class _ProfileMapState extends State<ProfileMap> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    print(width);

    return Container(
      padding: EdgeInsets.fromLTRB(0, width * 0.05, 0, width * 0.05),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            width: width * 0.6,
            height: width * 0.38,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(color: Colors.black, width: 1),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  child: CircleAvatar(
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/iu.jpg'),
                      radius: width * 0.15,
                    ),
                    radius: width * 0.16,
                    backgroundColor: Colors.blueAccent,
                  ),
                ),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(bottom: width * 0.05),
                        child: Text('Profile', style: TextStyle(color: Colors.blueAccent, fontWeight: FontWeight.bold, fontSize: width * 0.07),),
                      ),
                      Container(
                        child: Text('Name : User', style: TextStyle(color: Colors.black, fontSize: width * 0.035),),
                      ),
                      Container(
                        child: Text('Level : 0', style: TextStyle(color: Colors.black, fontSize: width * 0.035),),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: width * 0.38,
            height: width * 0.38,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(color: Colors.black, width: 1),
            ),
            child: Container(child: Text('뭔가 다른걸 구상해보자'),),
          )
        ],
      ),
    );
  }
}
