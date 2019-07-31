import 'package:meta/meta.dart';

class ReviewModel {
  final String comment;
  final int stars;

  const ReviewModel({@required this.comment, @required this.stars});

  factory ReviewModel.fromJson(Map<String, dynamic> parsedJson) {
    return ReviewModel(
      comment: parsedJson['comment'],
      stars: parsedJson['stars'],
    );
  }

  Map<String, dynamic> toJson(){
    return {
      'comment': this.comment,
      'stars': this.stars,
    };
  }
}
