import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:ivyhack/models/user_model.dart';

class DatabaseService {
  final String uid;
  DatabaseService({@required this.uid});
  final CollectionReference dataCollection =
      FirebaseFirestore.instance.collection("data");

  Future updateData(AppUser user)async{
    return await dataCollection.doc(uid).set({
      // TODO: What to set
    });
  }
}
