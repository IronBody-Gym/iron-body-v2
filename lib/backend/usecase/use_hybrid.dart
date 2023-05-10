import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:iron_body/backend/entity/event.dart';
import 'package:iron_body/backend/entity/trainer.dart';
import 'package:flutter/material.dart';

import '../entity/type.dart';

class HybridRepository {
  static HybridRepository? _instance;
  final CollectionReference _refTrainer =
      FirebaseFirestore.instance.collection('trainer');

  static getInstance() {
    if (_instance == null) {
      _instance = new HybridRepository();
    }
    return _instance;
  }

  addTrainer(GymTrainer trainer) async {
    await _refTrainer.doc(trainer.uid).set(trainer.toMap());
  }

  Future<List<GymTrainer>> getTrainer() async {
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
    }
    return listTrainer;
  } 

  Future<GymTrainer?> getTrainerById(String uid) async {
    final doc = await _refTrainer.doc(uid).get();

    Map<String, dynamic> mapType = doc['type'];
    final ref = FirebaseStorage.instance.ref().child(doc['url_image']);
    final downloadUrl = await ref.getDownloadURL();
    final trainer = GymTrainer(
        address: doc['address'],
        name: doc['name'],
        lastName: doc['last_name'],
        email: doc['email'],
        phone: doc['phone'],
        state: doc['state'],
        type: TypeTrainer(label: mapType["label"], value: mapType["value"]),
        image: downloadUrl,
        year: doc['year'],
        uid: doc['uid']);
    return trainer;
  }
}
