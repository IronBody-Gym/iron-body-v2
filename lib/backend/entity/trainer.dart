import 'package:iron_body/backend/entity/type.dart';

class GymTrainer {
  String name;
  String lastName;
  String email;
  String phone;
  String uid;
  String state;
  TypeTrainer type;
  String image;
  String year;
  String address;


  GymTrainer({
    required this.address,
    required this.name,
    required this.lastName,
    required this.email,
    required this.phone,
    required this.uid,
    required this.state,
    required this.type,
    required this.image,
    required this.year,
  });

  Map<String, dynamic> toMap() {
    return {
      'address': this.address,
      'last_name': this.lastName, 
      'name': this.name,
      "email": this.email,
      "phone": this.phone,
      "uid": this.uid,
      "state": this.state,
      "type": this.type.toMap(),
      "url_image": this.image,
      "year": this.year
      
    };
  }

}