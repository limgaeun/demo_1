import 'dart:async';
import 'package:flutter/material.dart';
import 'package:frontend/community/view/pages/post/write_page.dart';
import 'package:frontend/map/marker/action_page.dart';
import 'package:frontend/map/marker/marker_model.dart';
import 'package:frontend/server/fireservice.dart';
import 'package:naver_map_plugin/naver_map_plugin.dart';

class MarkerMapPage extends StatefulWidget {
  @override
  _MarkerMapPageState createState() => _MarkerMapPageState();
}

class _MarkerMapPageState extends State<MarkerMapPage> {

  Completer<NaverMapController> _controller = Completer();
  List<Marker> _markers = [];
  Future<List<MarkerModel>> markers = FireService().getEnvFireModel();

  @override
  void initState(){
    getMarker();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: <Widget>[
            _naverMap(),
          ],
        ),
      );
  }

  _naverMap() {
    return Expanded(
      child: Stack(
        children: <Widget>[
          NaverMap(
            onMapCreated: _onMapCreated,
            locationButtonEnable: true,
            markers: _markers,
            initLocationTrackingMode: LocationTrackingMode.Follow,
          ),
        ],
      ),
    );
  }

  // ================== method ==========================

  void _onMapCreated(NaverMapController controller) {
    _controller.complete(controller);
  }

  void getMarker() async {
    markers.then((value) {
      for (var i in value) {
        Marker newmarker = Marker(markerId: i.id, position: LatLng(i.latitude, i.longitude), onMarkerTab: _onMarkerTap);
        _markers.add(newmarker);
        _markers.toSet();
        _markers.toList();
        setState(() {});
      }
    });
  }
  void _onMarkerTap(Marker marker, Map<String, int> iconSize) {
    int pos = _markers.indexWhere((m) => m.markerId == marker.markerId);
    setState(() {
      showDialog(
          context: context,
          builder: (BuildContext ctx){
            return AlertDialog(
              content: FutureBuilder<List<MarkerModel>>(
                future: FireService().getEnvFireModel(),
                builder: (ctx, snapshot){
                  if (snapshot.hasData){
                    List<MarkerModel> datas = snapshot.data!;
                    int i = datas.indexWhere((e) => e.id == marker.markerId);
                    return SizedBox(
                      width: 100,
                      height: 100,
                      child: ListView(
                        children: [
                          Center(
                            child: Text(
                              '${datas[i].missionName}',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(padding: EdgeInsets.all(20)),
                          Text(
                            '${datas[i].detailInfo}'
                          ),
                        ],
                      ),
                    );
                  } else {
                    return Center(child: CircularProgressIndicator(),);
                  }
                },
              ),
              actions: [
                TextButton(onPressed: (){
                  Navigator.of(ctx).pop();
                }, child: Text('돌아가기')),
              ],
            );
          });
    });
  }
}