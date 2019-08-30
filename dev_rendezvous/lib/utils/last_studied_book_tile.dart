import '../styles/text_styles.dart';
import 'package:flutter/material.dart';
import '../model/last_course_studied.dart';
import '../utils/study_progress.dart';

class LastStudiedBookTile extends StatelessWidget {
  final LastStudiedCourse lastStudiedCourse;
  final double screenWidth;
  final double studyProgress;
  const LastStudiedBookTile(
      {Key key, this.lastStudiedCourse, this.screenWidth, this.studyProgress})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Row(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    // ClipRRect creates the book images
                    ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      child: Image.asset(lastStudiedCourse.imagePath,
                          height: 60, width: 45, fit: BoxFit.cover),
                    ),
                    Positioned(
                      left: 8,
                      right: 8,
                      top: 0,
                      bottom: 0,
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: Icon(Icons.play_arrow, color: Colors.red),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                            text: lastStudiedCourse.name,
                            style: headingTwoTextStyle),
                        TextSpan(text: '\n'),
                        TextSpan(
                            text:
                                "${lastStudiedCourse.hoursStudied} hours studied",
                            style: bodyTextStyle),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: StudyProgressWidget(
                screenWidth: screenWidth, studyProgress: studyProgress),
          )
        ],
      ),
    );
  }
}
