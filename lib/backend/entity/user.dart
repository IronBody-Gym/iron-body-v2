class User{
  String firstName;
  String ?lastName;
  String  email;
  String gender;
  String idCard;
  String phone;
  String uid;
  DateTime birthDate;
  DateTime createdDate;
  DateTime lastModifiedDate;

  User({
    required this.firstName,
    this.lastName,
    required this.email,
    required this.gender,
    required this.idCard,
    required this.phone,
    required this.uid,
    required this.birthDate,
    required this.createdDate,
    required this.lastModifiedDate
  });

  Map<String, dynamic> toMap() {
    return {
      'last_name': this.lastName, 
      'first_name': this.firstName,
      "email": this.email,
      "gender": this.gender,
      "id_card": this.idCard,
      "phone": this.phone,
      "uid": this.uid,
      "created_date": this.createdDate,
      "last_modified_date": this.lastModifiedDate,
      "birth_date": this.birthDate
    };
  }

}