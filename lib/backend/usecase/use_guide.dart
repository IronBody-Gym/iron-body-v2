import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:iron_body/backend/entity/guide/guide.dart';


class GuideRepository {
  final CollectionReference _refGuide = FirebaseFirestore.instance.collection('guide');

  Future<void> addGuide(Guide guide) async {
    await _refGuide.doc(guide.id).set(guide.toMap());
  }

  FutureOr<Guide> getTrainerByUid(String id) async {
    
    final querySnapshot = await _refGuide.where("id", isEqualTo: id).get();
    if (querySnapshot.docs.isNotEmpty) {
      final doc = querySnapshot.docs.first;
      return Guide(
        description: doc['description'],
        group: doc['group'],
        nameExercise: doc['name'],
        id: doc['id'],
        level: doc['level'],
        machine: doc['machine'],
        videoUrl: doc['url_video']

      );
    }
   throw Exception("Trainer no found");
  }

}

