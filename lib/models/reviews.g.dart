// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reviews.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars

mixin _$Reviews on ReviewsBase, Store {
  final _$reviewsAtom = Atom(name: 'ReviewsBase.reviews');

  @override
  ObservableList<ReviewModel> get reviews {
    _$reviewsAtom.context.enforceReadPolicy(_$reviewsAtom);
    _$reviewsAtom.reportObserved();
    return super.reviews;
  }

  @override
  set reviews(ObservableList<ReviewModel> value) {
    _$reviewsAtom.context.conditionallyRunInAction(() {
      super.reviews = value;
      _$reviewsAtom.reportChanged();
    }, _$reviewsAtom, name: '${_$reviewsAtom.name}_set');
  }

  final _$numberOfReviewsAtom = Atom(name: 'ReviewsBase.numberOfReviews');

  @override
  int get numberOfReviews {
    _$numberOfReviewsAtom.context.enforceReadPolicy(_$numberOfReviewsAtom);
    _$numberOfReviewsAtom.reportObserved();
    return super.numberOfReviews;
  }

  @override
  set numberOfReviews(int value) {
    _$numberOfReviewsAtom.context.conditionallyRunInAction(() {
      super.numberOfReviews = value;
      _$numberOfReviewsAtom.reportChanged();
    }, _$numberOfReviewsAtom, name: '${_$numberOfReviewsAtom.name}_set');
  }

  final _$averageStarsAtom = Atom(name: 'ReviewsBase.averageStars');

  @override
  double get averageStars {
    _$averageStarsAtom.context.enforceReadPolicy(_$averageStarsAtom);
    _$averageStarsAtom.reportObserved();
    return super.averageStars;
  }

  @override
  set averageStars(double value) {
    _$averageStarsAtom.context.conditionallyRunInAction(() {
      super.averageStars = value;
      _$averageStarsAtom.reportChanged();
    }, _$averageStarsAtom, name: '${_$averageStarsAtom.name}_set');
  }

  final _$initReviewsAsyncAction = AsyncAction('initReviews');

  @override
  Future<void> initReviews() {
    return _$initReviewsAsyncAction.run(() => super.initReviews());
  }

  final _$_getReviewsAsyncAction = AsyncAction('_getReviews');

  @override
  Future<List<ReviewModel>> _getReviews() {
    return _$_getReviewsAsyncAction.run(() => super._getReviews());
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
