import 'package:flutter/material.dart';
import 'package:web_pancasila_aceh/common/base/abstract_responsive_state.dart';

import 'package:web_pancasila_aceh/common/helper/themes.dart';

import 'index.dart';

class HeroComponent extends ResponsiveScreenState {
  HeroComponent(
      {Key? key,
      required this.imagePath,
      required this.headingText,
      required this.subHeadingText});

  final String imagePath;
  final String headingText;
  final String subHeadingText;

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

    return SizedBox(
      height: height,
      child: Stack(
        children: [
          //Image
          Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: width < 1175 ? BoxFit.fitHeight : BoxFit.fitWidth,
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
                colors: [Colors.black, Colors.black.withOpacity(0)],
              ),
            ),
            child: Padding(
              padding:
                  EdgeInsets.only(left: width * 0.057, bottom: height * 0.18),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(subHeadingText, style: tsHeading3MediumWhite),
                  Text(headingText.toUpperCase(), style: tsDisplayBoldWhite),
                ],
              ),
            ),
          ),

          //Navbar
          TopNavigationBar(),

          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 74,
              width: width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(70),
                  topRight: Radius.circular(70),
                ),
              ),
            ),
          )
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

    return SizedBox(
      height: height,
      child: Stack(
        children: [
          //Image
          Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: width < 1175 ? BoxFit.fitHeight : BoxFit.fitWidth,
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
                colors: [Colors.black38, Colors.black38.withOpacity(0)],
              ),
            ),
            child: Padding(
              padding: EdgeInsets.only(left: width * 0.057),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    headingText.toUpperCase(),
                    style: tsHeading2BoldWhite,
                    textAlign: TextAlign.center,
                  ),
                  Text(subHeadingText, style: tsParagraph16MediumWhite),
                ],
              ),
            ),
          ),

          //Navbar
          TopNavigationBar(),

          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 54,
              width: width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(70),
                  topRight: Radius.circular(70),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
