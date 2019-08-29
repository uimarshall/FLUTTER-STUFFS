import 'package:dev_rendezvous/styles/text_styles.dart';
import 'package:dev_rendezvous/utils/content_heading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:dev_rendezvous/utils/rounded_img.dart';
import '../image_asset.dart';
import '../styles/colors.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final logoHeight = screenHeight * 0.4;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Transform.translate(
            offset: Offset(screenWidth * 0.4, 10),
            child: Transform.rotate(
              angle: -0.1,
              child: SvgPicture.asset(
                logo,
                height: logoHeight,
                color: logoTintColor,
              ),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 60,
                ),
                // Padding left & right = symetric horizontal
                //==================== Navbar===========================
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32.0),
                  child: Row(
                    // Put space between the menu and search box
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      // Harmburger icon
                      Icon(Icons.menu, color: tertiaryTextColor),
                      // Search icon
                      Icon(
                        Icons.search,
                        color: tertiaryTextColor,
                      )
                    ],
                  ),
                ),

                // ===================Image and name-Header Section================
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                  ),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        child: Row(
                          children: <Widget>[
                            // Image of developer
                            RoundedImageWidget(
                              imagePath: dev1,
                              ranking: 40,
                              showRanking: true,
                            ),
                            // Name of developer
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16.0),
                              child: RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'Hello',
                                      style: userNameTextStyle,
                                    ),
                                    TextSpan(text: '\n'),
                                    TextSpan(
                                        text: 'Chioma Chuks',
                                        style: userNameTextStyle),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      // =================HOURS STUDIED SESSION=========================
                      Padding(
                        padding: const EdgeInsets.only(
                            right: 16.0, bottom: 16, top: 16),
                        child: Material(
                          elevation: 4,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(12),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(
                              left: 16.0,
                              right: 16.0,
                              bottom: 32,
                              top: 16,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Expanded(
                                      child: Text(
                                        'HOURS STUDIED',
                                        style: hoursStudiedLabelTextStyle,
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  '243 Hours',
                                  style: hoursStudiedTextStyle,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      // ====================Content Heading==================
                      ContentHeadingWidget(
                        heading: 'LAST BOOKS STUDIED',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
