import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../entity/user.dart';

class UserRepository extends ChangeNotifier {
  List<User> listUser = [];
  User? user;
  final CollectionReference _refUser =
      FirebaseFirestore.instance.collection('users');

  addUser(User user) async {
    await _refUser.doc(user.uid).set(user.toMap());
  }

  getUserById(String uid) async {
    user = await this.getUserByUid(uid);
    notifyListeners();
  }

  Future<List<User>> getUser() async {
    final querySnapshot = await _refUser.get();
    List<User> listUser = [];
      if (querySnapshot.docs.isNotEmpty) {
        for (final doc in querySnapshot.docs) {
          
          listUser.add(User(
        firstName: doc["first_name"],
            email: doc["email"],
            gender: doc["gender"],
            idCard: doc["id_card"],
            phone: doc["phone"],
            uid: doc["uid"],
            birthDate: doc["birth_date"].toDate(),
            createdDate: doc["created_date"].toDate(),
            lastModifiedDate: doc["last_modified_date"].toDate()));
        }
      }         
      return listUser;
    }
  
    FutureOr<User> getUserByUid(String uid) async {
      final doc = await _refUser.doc(uid).get();
      
        final user = User(
            firstName: doc["first_name"],
            email: doc["email"],
            gender: doc["gender"],
            idCard: doc["id_card"],
            phone: doc["phone"],
            uid: doc["uid"],
            birthDate: doc["birth_date"],
            createdDate: doc["created_date"],
            lastModifiedDate: doc["last_modified_date"]);
        
        return user;
  }
}

  



//como obtener datos con un waitgroup pegandole varias veces en golang?