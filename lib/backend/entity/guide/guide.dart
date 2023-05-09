class Guide {
  String description;
  String group;
  String id;
  String level;
  String? machine;
  String nameExercise;
  String videoUrl;

  Guide({
    required this.description,
    required this.group,
    required this.id,
    required this.level,
    this.machine,
    required this.nameExercise,
    required this.videoUrl
  });

  Map<String, dynamic> toMap() {
    return {
      'description': this.description,
      'group': this.group,
      'id': this.id,
      'level': this.level,
      'machine': this.machine,
      'name': this.nameExercise,
      'url_video': this.videoUrl
      
      
    };
  }
}