import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:iron_body/backend/entity/event.dart';

class EventRepository extends ChangeNotifier {
  final CollectionReference _refEvent =
      FirebaseFirestore.instance.collection('event');
      DateTimeRange? calendarSelectedDay;

  List<EventTrainer> listEvent = [];

  addEvent(EventTrainer event) async {
    await _refEvent.doc(event.id).set(event.toMap());
    this.getEvent();
  }

  getEvent() async {
    final dateStart = this.calendarSelectedDay?.start;
    final dateEnd = this.calendarSelectedDay?.end;
    final start = Timestamp.fromDate(dateStart ?? DateTime.now());
    final end = Timestamp.fromDate(dateEnd ?? DateTime.now().add(Duration(days: 1)));
    final querySnapshot = await _refEvent.where("start", isGreaterThanOrEqualTo:  start).where("start", isLessThanOrEqualTo: end).get();
    List<EventTrainer> listEvent = [];
    if (querySnapshot.docs.isNotEmpty) {
      for (final doc in querySnapshot.docs) {
        Timestamp start =  doc['start'];
        Timestamp end =  doc['end'];

        listEvent.add(EventTrainer(
            id: doc['id'],
            allDay: doc['allDay'],
            start: start.toDate(),
            end: end.toDate(),
            status: doc['statu'],
            title: doc['title'])
        );
      }
      this.listEvent = listEvent;
      notifyListeners();
      return;
    }
    this.listEvent =[];
    notifyListeners();
  }
}
