import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseServices {
  final CollectionReference productCollection =
      FirebaseFirestore.instance.collection('dataKontak');

  Future<void> createOrUpdateProduct(String id,
      {String name, int number}) async {
    await productCollection.doc(id).set({'nama': name, 'nomor': number});
  }
}
