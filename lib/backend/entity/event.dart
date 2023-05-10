import 'package:iron_body/backend/entity/trainer.dart';

class EventTrainer {

  String id;
  bool allDay;
  DateTime start;
  DateTime end;
  String status;
  String title;
  String uidTrainer;
  GymTrainer? trainer;

  EventTrainer({
    required this.id,
    required this.allDay,
    required this.start,
    required this.end,
    required this.status,
    required this.title,
    required this.uidTrainer,
    this.trainer
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'allDay': allDay,
      'start': start,
      'end': end,
      'statu': status,
      'title': title,
      "uidTrainer" : uidTrainer,
      "trainer" : trainer?.toMap(),
    };
  }

}