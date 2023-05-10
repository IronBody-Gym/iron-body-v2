class Groupmuscles {
    String? description;
    String group;
    String id;
    String level;
    String machine;
    String name;
    String? urlVideo;

    Groupmuscles({
        this.description,
        required this.group,
        required this.id,
        required this.level,
        required this.machine,
        required this.name,
        this.urlVideo
    });

    Map<String, dynamic> toMap() {
      return {
        'description': description,
        'group': group,
        'id': id,
        'level': level,
        'machine': machine,
        'name': name,
        'urlVideo': urlVideo

      };

    }
}

