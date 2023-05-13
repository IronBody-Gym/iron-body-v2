import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:iron_body/backend/entity/trainer.dart';
import 'package:iron_body/backend/entity/type.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:iron_body/backend/usecase/use_hybrid.dart';

class TrainerRepository extends ChangeNotifier {
  
  HybridRepository _repo = HybridRepository.getInstance();
  List<GymTrainer> listTrainer = [];
  GymTrainer ? trainer;
  addTrainer(GymTrainer trainer) async {
    await this._repo.addTrainer(trainer);
    this.getTrainer();
  }

  getTrainer() async {
      this.listTrainer = await  this._repo.getTrainer();
      notifyListeners();
  }

  getTrainerById(String uid) async {
    trainer = await  this._repo.getTrainerById(uid);
    notifyListeners();
  }
}
