import 'package:flutter/material.dart';
import 'package:frontend/map/marker/marker_map_page.dart';
import 'package:geolocator/geolocator.dart';

class MapPage extends StatefulWidget {
  @override
  _MapPageState createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  @override
  void initState() {
    super.initState();
    getPosition();
  }
  Future<void> getPosition() async {
    var currentPosition = await Geolocator
        .getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
    var lastPosition = await Geolocator
        .getLastKnownPosition();
    print(currentPosition);
    print(lastPosition);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MarkerMapPage(),
      );
  }
}