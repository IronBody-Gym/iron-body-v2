import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:iron_body/backend/entity/machine.dart';


class GuideRepository {
  final CollectionReference _refMachine = FirebaseFirestore.instance.collection('machine');

  Future<void> addMachine(Machine machine) async {
    await _refMachine.doc(machine.id).set(machine.toMap());
  }

  FutureOr<Machine> getTrainerByUid(String id) async {
    
    final querySnapshot = await _refMachine.where("id", isEqualTo: id).get();
    if (querySnapshot.docs.isNotEmpty) {
      final doc = querySnapshot.docs.first;
      return Machine(
        description: doc['description'],
        group: doc['group'],
        name: doc['name'],
        id: doc['id'],
        image: doc["url_image"]
      );
    }
   throw Exception("Trainer no found");
  }

}

