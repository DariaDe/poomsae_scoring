import 'package:cloud_firestore/cloud_firestore.dart';

class JudgesService {
  /// get list of judges
  Stream<QuerySnapshot<Map<String, dynamic>>> getJudges() {
    var response = FirebaseFirestore.instance.collection('judges').snapshots();
    return response;
  }
}
