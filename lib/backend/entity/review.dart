class Review {
  String? scoreReview;
  String descpription;
  String uidTrainer;
  String uid;

  Review({
    this.scoreReview,
    required this.descpription,
    required this.uidTrainer,
    required this.uid
  });

  Map<String, dynamic> toMap(){
    return{
      'score_review': this.scoreReview,
      'description': this.descpription,
      'uid_trainer': this.uidTrainer,
      'uid': this.uid
    };

  }

}