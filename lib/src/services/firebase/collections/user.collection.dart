import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';

class FirebaseUserCollection {
  late FirebaseFirestore firestore;
  late CollectionReference usersCollection;

  FirebaseUserCollection() {
    firestore = FirebaseFirestore.instance;
    usersCollection = firestore.collection('users');
  }

  void addUser(Map<String, dynamic> data) async {
    try {
      await usersCollection.add(data);
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
