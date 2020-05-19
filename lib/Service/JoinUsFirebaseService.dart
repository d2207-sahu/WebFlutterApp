import 'package:cloud_firestore/cloud_firestore.dart';

class JoinUsFirebaseService {
  final CollectionReference _collec = Firestore.instance.collection('Profiles');

  Future<dynamic> sendProfile(data) async {
    if (data == null) {
      await _collec.document().setData(data, merge: false).whenComplete(() {
        return true;
      }).catchError((error) {
        return error;
      });
    } else
      return false;
  }
}
