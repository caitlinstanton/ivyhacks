import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ivyhack/models/constants.dart';

class DatabaseService {
  final String uid;
  DocumentReference userDataDoc;

  DatabaseService({this.uid}) {
    userDataDoc = FirebaseFirestore.instance
        .collection(Constant.DATA_COLLECTION_NAME)
        .doc(uid);
  }

  final CollectionReference dataCollection =
      FirebaseFirestore.instance.collection(Constant.DATA_COLLECTION_NAME);

  Future updateData(Map<String, dynamic> data) async {
    return await dataCollection.doc(uid).set(data);
  }

  Future<Map<String, dynamic>> getUserData() async {
    DocumentSnapshot userSnapshot = await userDataDoc.get();
    return userSnapshot.data();
  }
}
