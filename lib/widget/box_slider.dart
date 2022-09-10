import 'package:flutter/material.dart';
import 'package:frontend/model/poster_model.dart';

class BoxSlider extends StatelessWidget {
  final List<Poster> poster;
  BoxSlider({required this.poster});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(7),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('봉사활동'),
          Container(
            height: 300,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: makeBoxImages(context, poster),
            ),
          )
        ],
      ),
    );
  }
}

List<Widget> makeBoxImages(BuildContext context, List<Poster> poster){
  List<Widget> results = [];
  for (var i=0; i < poster.length; i++){
    results.add(InkWell(
      onTap: (){},
      child: Container(
        padding: EdgeInsets.only(right: 10),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Image.asset('assets/'+poster[i].poster),
        ),
      ),
    ));
  }
  return results;
}
