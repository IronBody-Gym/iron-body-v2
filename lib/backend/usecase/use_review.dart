import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:iron_body/backend/entity/review.dart';


class ReviewRepository {
  final CollectionReference _refReview = FirebaseFirestore.instance.collection('review');

  Future<void> addReview(Review review) async {
    await _refReview.doc(review.uid).set(review.toMap());
  }

  FutureOr<Review> getReviewByUid(String uid) async {
    
    final querySnapshot = await _refReview.where("uid_trainer", isEqualTo: uid).get();
    if (querySnapshot.docs.isNotEmpty) {
      final doc = querySnapshot.docs.first;
      return Review(
        scoreReview: doc['score_review'],
        descpription: doc['descpription'],
        uidTrainer: doc['uid_trainer'],
        uid: doc['uid'],
      
      );
    }
   throw Exception("Review no found");
  }



}

