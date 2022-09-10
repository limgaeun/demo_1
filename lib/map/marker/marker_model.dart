import 'package:cloud_firestore/cloud_firestore.dart';

class MarkerModel{
  String? missionName;
  String? detailInfo;
  String? id;
  double? latitude;
  double? longitude;
  DocumentReference? reference;
  MarkerModel({this.missionName, this.detailInfo, this.id, this.longitude, this.latitude, this.reference});

  MarkerModel.fromJson(dynamic json, this.reference){
    missionName = json['missionName'];
    detailInfo = json['detailInfo'];
    id = reference?.id;
    latitude = json['latitude'];
    longitude = json['longitude'];
  }

  MarkerModel.fromSnapShot(DocumentSnapshot <Map<String, dynamic>> snapshot)
      : this.fromJson(snapshot.data(), snapshot.reference);

  MarkerModel.fromQuerySnapShot(
      QueryDocumentSnapshot<Map<String, dynamic>> snapshot
      ) : this.fromJson(snapshot.data(), snapshot.reference);

}