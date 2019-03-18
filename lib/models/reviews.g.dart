// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reviews.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies

mixin _$Reviews on ReviewsBase, Store {
  final _$reviewsAtom = Atom(name: 'ReviewsBase.reviews');

  @override
  ObservableList<ReviewModel> get reviews {
    _$reviewsAtom.reportObserved();
    return super.reviews;
  }

  @override
  set reviews(ObservableList<ReviewModel> value) {
    mainContext.checkIfStateModificationsAreAllowed(_$reviewsAtom);
    super.reviews = value;
    _$reviewsAtom.reportChanged();
  }

  final _$numberOfReviewsAtom = Atom(name: 'ReviewsBase.numberOfReviews');

  @override
  int get numberOfReviews {
    _$numberOfReviewsAtom.reportObserved();
    return super.numberOfReviews;
  }

  @override
  set numberOfReviews(int value) {
    mainContext.checkIfStateModificationsAreAllowed(_$numberOfReviewsAtom);
    super.numberOfReviews = value;
    _$numberOfReviewsAtom.reportChanged();
  }

  final _$averageStarsAtom = Atom(name: 'ReviewsBase.averageStars');

  @override
  double get averageStars {
    _$averageStarsAtom.reportObserved();
    return super.averageStars;
  }

  @override
  set averageStars(double value) {
    mainContext.checkIfStateModificationsAreAllowed(_$averageStarsAtom);
    super.averageStars = value;
    _$averageStarsAtom.reportChanged();
  }

  final _$ReviewsBaseActionController = ActionController(name: 'ReviewsBase');

  @override
  void addReview(ReviewModel newReview) {
    final _$actionInfo = _$ReviewsBaseActionController.startAction();
    try {
      return super.addReview(newReview);
    } finally {
      _$ReviewsBaseActionController.endAction(_$actionInfo);
    }
  }
}
