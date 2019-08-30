import 'package:flutter/material.dart';
import '../styles/colors.dart';

class StudyProgressWidget extends StatelessWidget {
  final double studyProgress, screenWidth;
  const StudyProgressWidget({Key key, this.studyProgress, this.screenWidth})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    final width = screenWidth * 0.33;
    return Stack(
      children: <Widget>[
        Container(
          width: width,
          height: 10,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(4)),
            border: Border.all(color: tertiaryTextColor, width: 1),
          ),
        ),
        Container(
          width: width * studyProgress,
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(4)),
              gradient: appGradient),
        ),
      ],
    );
  }
}
