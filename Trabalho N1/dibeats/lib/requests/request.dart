import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';

class Requests extends ChangeNotifier {
  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;
  CollectionReference _postCollection = FirebaseFirestore.instance.collection('plailist');

  Future<List<PostModel>

}