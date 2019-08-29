import 'package:dev_rendezvous/styles/text_styles.dart';
import 'package:flutter/material.dart';

class ContentHeadingWidget extends StatelessWidget {
  final String heading;
  const ContentHeadingWidget({Key key, @required this.heading})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 20.0,
      ),
      child: Text(
        heading,
        style: headingOneTextStyle,
      ),
    );
  }
}