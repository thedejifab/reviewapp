import 'package:flutter/material.dart';

/// Creates a row of stars from a specified stars count
class Stars extends StatelessWidget {
  final int starsCount;

  const Stars({Key key, @required this.starsCount}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    List dummyList = List(starsCount);
    return Row(
      children: dummyList.map((listItem) {
        return Icon(Icons.star);
      }).toList(),
    );
  }
}
