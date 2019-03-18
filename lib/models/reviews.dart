import 'package:mobx/mobx.dart';
import 'package:reviewer/models/reviewmodel.dart';

part 'reviews.g.dart';

class Reviews = ReviewsBase with _$Reviews;

abstract class ReviewsBase implements Store {
  @observable
  ObservableList<ReviewModel> reviews = ObservableList.of([]);

  @observable
  int numberOfReviews = 0;

  int totalStars = 0;

  @observable
  double averageStars = 0;

  @action
  void addReview(ReviewModel newReview) {
    //to update list of reviews
    reviews.add(newReview);

    // to update the number of reviews
    numberOfReviews++;

    // to update the average number of stars
    averageStars = calculateAverageStars(newReview.stars);

    // to update the total number of stars
    totalStars += newReview.stars;
  }

  // to calculate average number of stars
  double calculateAverageStars(int newStars) {
    return (newStars + totalStars) / numberOfReviews;
  }
}
