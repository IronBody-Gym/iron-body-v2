import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';

import '../entity/user.dart';

class UserRepository {
  final CollectionReference _refUser =
      FirebaseFirestore.instance.collection('users');

  Future<void> addUser(User user) async {
    await _refUser.doc(user.uid).set(user.toMap());
  }

  FutureOr<User> getUserByUid(String uid) async {
    final querySnapshot = await _refUser.where("uid", isEqualTo: uid).get();
    if (querySnapshot.docs.isNotEmpty) {
      final doc = querySnapshot.docs.first;
      return User(
          firstName: doc["first_name"],
          email: doc["email"],
          gender: doc["gender"],
          idCard: doc["id_card"],
          phone: doc["phone"],
          uid: doc["uid"],
          birthDate: doc["birth_date"],
          createdDate: doc["created_date"],
          lastModifiedDate: doc["last_modified_date"]);
    }
   throw Exception("User no found");
  }
}


//como obtener datos con un waitgroup pegandole varias veces en golang?