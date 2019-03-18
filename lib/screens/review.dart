import 'package:flutter/material.dart';
import 'package:reviewer/models/reviewmodel.dart';
import 'package:reviewer/models/reviews.dart';
import 'package:reviewer/widgets/info_card.dart';
import 'package:reviewer/widgets/review.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class Review extends StatefulWidget {
  @override
  ReviewState createState() {
    return new ReviewState();
  }
}

class ReviewState extends State<Review> {
  final Reviews _reviewsState = Reviews();

  List<int> _stars = [1, 2, 3, 4, 5];

  int _selectedStar = 0;

  @override
  void initState() {
    _selectedStar = _stars[0];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double screenWidth = screenSize.width;

    return Scaffold(
      appBar: AppBar(
        title: Text('Review App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 12.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  width: screenWidth * 0.6,
                  child: TextField(
                    controller: _commentController,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(10),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      hintText: "Write a review",
                      labelText: "Write a review",
                    ),
                  ),
                ),
                Container(
                  child: DropdownButton(
                    hint: Text("Stars"),
                    elevation: 0,
                    value: 1,
                    items: _stars.map((star) {
                      return DropdownMenuItem(
                        child: Text(star.toString()),
                      );
                    }).toList(),
                    onChanged: (item) {
                      // setState(() {
                      //   _selectedStar = item;
                      // });
                    },
                  ),
                ),
                Container(
                    child: IconButton(
                  icon: Icon(Icons.done),
                  onPressed: () {
                    _reviewsState.addReview(ReviewModel(
                        comment: _commentController.text,
                        stars: _selectedStar));
                  },
                ))
              ],
            ),
            SizedBox(height: 12.0),
            //contains average stars and total reviews card
            Observer(
              builder: (_) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    InfoCard(
                      infoValue: _reviewsState.numberOfReviews.toString(),
                      infoLabel: "reviews",
                      cardColor: Colors.green,
                    ),
                    InfoCard(
                      infoValue: _reviewsState.averageStars.toString(),
                      infoLabel: "average stars",
                      cardColor: Colors.lightBlue,
                    ),
                  ],
                );
              },
            ),
            SizedBox(height: 24.0),
            //the review menu label
            Container(
              color: Colors.grey[200],
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Icon(Icons.comment),
                  SizedBox(width: 10.0),
                  Text(
                    "Reviews",
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ),
            //contains list of reviews
            Expanded(
              child: Container(
                child: Observer(
                  builder: (_) => _reviewsState.reviews.isNotEmpty
                      ? ListView(
                          children:
                              _reviewsState.reviews.reversed.map((reviewItem) {
                            return ReviewWidget(
                              reviewItem: reviewItem,
                            );
                          }).toList(),
                        )
                      : Text("No reviews yet"),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  final TextEditingController _commentController = TextEditingController();
}
