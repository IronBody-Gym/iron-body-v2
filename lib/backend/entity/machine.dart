class Machine {
  String description;
  String group;
  String id;
  String name;
  String image;

  Machine({
    required this.description,
    required this.group,
    required this.id,
    required this.name,
    required this.image
  });

  Map<String, dynamic> toMap() {
    return {
      
      'description': this.description,
      'group': this.group,
      'id': this.id,
      'name': this.name,
      'url_image': this.image,

    };
  }

}