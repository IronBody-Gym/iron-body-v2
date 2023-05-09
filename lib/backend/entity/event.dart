class EventTrainer {

  String id;
  bool allDay;
  DateTime start;
  DateTime end;
  String status;
  String title;

  EventTrainer({
    required this.id,
    required this.allDay,
    required this.start,
    required this.end,
    required this.status,
    required this.title,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'allDay': allDay,
      'start': start,
      'end': end,
      'statu': status,
      'title': title,
    };
  }

}