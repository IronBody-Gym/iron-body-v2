class TypeTrainer {
  String label;
  String value;

  TypeTrainer({
    required this.label,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return {
      'label': this.label, 
      'value': this.value,
    };
  }

}