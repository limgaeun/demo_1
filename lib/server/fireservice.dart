import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:frontend/map/marker/marker_model.dart';

class FireService{
  static final FireService _fireService = FireService._internal();
  factory FireService() => _fireService;
  FireService._internal();


  //Read
  Future<List<MarkerModel>> getEnvFireModel() async{
    CollectionReference<Map<String, dynamic>> collectionReference = FirebaseFirestore.instance.collection('environment');
    QuerySnapshot<Map<String, dynamic>> querySnapshot = await collectionReference.get();

    List<MarkerModel> env =[];
    for (var doc in querySnapshot.docs){
      MarkerModel markerModel = MarkerModel.fromQuerySnapShot(doc);
      env.add(markerModel);
    }
    return env;
  }


}