import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:iron_body/backend/entity/trainer.dart';
import 'package:iron_body/backend/entity/type.dart';
import 'package:firebase_storage/firebase_storage.dart';

class TrainerRepository extends ChangeNotifier {
  final CollectionReference _refTrainer =
      FirebaseFirestore.instance.collection('trainer');

  List<GymTrainer> listTrainer = [];

  addTrainer(GymTrainer trainer) async {
    await _refTrainer.doc(trainer.uid).set(trainer.toMap());
    this.getTrainer();
  }

  getTrainer() async {
    final querySnapshot = await _refTrainer.get();
    List<GymTrainer> listTrainer = [];
    if (querySnapshot.docs.isNotEmpty) {
      for (final doc in querySnapshot.docs) {
        Map<String, dynamic> mapType = doc['type'];
        final ref = FirebaseStorage.instance.ref().child(doc['url_image']);
        final downloadUrl = await ref.getDownloadURL();

        listTrainer.add(GymTrainer(
            address: doc['address'],
            name: doc['name'],
            lastName: doc['last_name'],
            email: doc['email'],
            phone: doc['phone'],
            state: doc['state'],
            type: TypeTrainer(label: mapType["label"], value: mapType["value"]),
            image: downloadUrl,
            year: doc['year'],
            uid: doc['uid']));
      }
      this.listTrainer = listTrainer;
      notifyListeners();
      return;
    }
    this.listTrainer = [];
    notifyListeners();
  }
}
