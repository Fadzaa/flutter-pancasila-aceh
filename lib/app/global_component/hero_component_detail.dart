import 'package:flutter/material.dart';
import 'package:web_pancasila_aceh/common/base/abstract_responsive_state.dart';

import 'package:web_pancasila_aceh/common/helper/themes.dart';

import 'index.dart';

class HeroComponentDetail extends ResponsiveScreenState {
  HeroComponentDetail(
      {Key? key,
        required this.imagePath,
        required this.headingText,});

  final String imagePath;
  final String headingText;

  @override
  Widget build(BuildContext context) {
    return super.build(context);
  }

  @override
  Widget buildDesktopPage(context) {
    // TODO: implement buildDesktopPage
    final Size mediaQuery = MediaQuery.of(context).size;
    final double width = mediaQuery.width;
    final double height = mediaQuery.height;

    return Container(
      height: height * 0.49,
      margin: EdgeInsets.only(bottom: height * 0.085),
      child: Stack(
        children: [
          //Image
          Container(
            width: width,
            height: height * 0.49,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: width < 1041 ? BoxFit.fitHeight : BoxFit.fitWidth,
              ),
            ),
          ),

          //Gradient & Content
          Container(
            width: width,
            height: height * 0.49,
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.1),
            ),
            child: Padding(
              padding:
              EdgeInsets.only(left: width * 0.08, bottom: height * 0.04),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(headingText.toUpperCase(), style: tsDisplayBoldWhite),
                ],
              ),
            ),
          ),

          //Navbar
          TopNavigationBar(),
        ],
      ),
    );
  }

  @override
  Widget buildMobilePage(context) {
    // TODO: implement buildMobilePage
    final Size mediaQuery = MediaQuery.of(context).size;
    final double width = mediaQuery.width;
    final double height = mediaQuery.height;

    return Container(
      height: height * 0.35,
      margin: EdgeInsets.only(bottom: height * 0.025),
      child: Stack(
        children: [
          //Image
          Container(
            width: width,
            height: height * 0.35,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.fitHeight,
              ),
            ),
          ),

          //Gradient & Content
          Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.center,
                colors: [Colors.black, Colors.black38.withOpacity(0)],
              ),
            ),
            child: Padding(
              padding: EdgeInsets.only(left: width * 0.08, bottom: height * 0.04),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: width * 0.5,
                    child: Text(
                      headingText.toUpperCase(),
                      style: tsHeading3BoldWhite.copyWith(
                        height: 1,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          //Navbar
          TopNavigationBar(),
        ],
      ),
    );
  }
}
