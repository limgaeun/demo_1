import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:frontend/community/domain/user/user.dart';

class UserProvider {
  final _collection = 'user';

  Future<QuerySnapshot> login(String uid) => FirebaseFirestore.instance.collection(_collection).where('uid', isEqualTo: '$uid').get();

  Future<DocumentReference> join(User newUser) =>
      FirebaseFirestore.instance.collection(_collection).add(newUser.toJson());

  Future<QuerySnapshot> checkEmail(String email) =>
      FirebaseFirestore.instance.collection(_collection).where('email', isEqualTo: email).get();

  Future<QuerySnapshot> checkUsername(String username) =>
      FirebaseFirestore.instance.collection(_collection).where('username', isEqualTo: username).get();
}