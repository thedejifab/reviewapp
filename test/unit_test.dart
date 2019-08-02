import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:reviewer/main.dart';
import 'package:reviewer/models/reviewmodel.dart';
import 'package:reviewer/models/reviews.dart';

void main() {
  testWidgets('Test for rendered UI', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());

    Finder starCardFinder = find.byKey(Key('avgStar'));

    expect(starCardFinder, findsOneWidget);
  });

  test('Test MobX state class', () async {
    final Reviews _reviewsState = Reviews();
    _reviewsState.initReviews();

    expect(_reviewsState.totalStars, 0);
    expect(_reviewsState.averageStars, 0);

    _reviewsState.addReview(ReviewModel(
      comment: 'This is a test review',
      stars: 3,
    ));

    expect(_reviewsState.totalStars, 3);

    _reviewsState.addReview(ReviewModel(
      comment: 'This is a second test review',
      stars: 5,
    ));

    expect(_reviewsState.averageStars, 4);
  });
}
