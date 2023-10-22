import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:web_pancasila_aceh/common/helper/themes.dart';
import 'package:web_pancasila_aceh/common/base/abstract_responsive_state.dart';

class CardHistory extends ResponsiveScreenState {
  CardHistory(
      {Key? key,
        required this.textTitle,
        required this.imagePath,
        required this.textDetail,
        required this.isArrow,
      });

  final String textTitle;
  final String imagePath;
  final String textDetail;
  final bool isArrow;

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

    return Column(
      children: [
        Stack(
          alignment: Alignment.topCenter,
          children: [

            /// Box White Layer 1
            Container(
              margin: EdgeInsets.only(top: height * 0.04),
              padding: EdgeInsets.symmetric(horizontal: width * 0.03, vertical: height * 0.05),
              decoration: BoxDecoration(
                color: Color(0xFFFAFFFF),
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    offset: Offset(0, 3),
                    blurRadius: 6,
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(40),
                    child: Image.asset(
                      "assets/images/sejarah_$imagePath",
                      fit: BoxFit.fitWidth,
                      width: width,
                      height: height * 0.35,
                    ),
                  ),

                  SizedBox(height: height * 0.03),

                  Container(
                      padding: EdgeInsets.symmetric(horizontal: width * 0.02),
                      child: Text(textDetail, style: tsHeading4MediumBlack,)
                  ),
                ],
              ),
            ),

            /// Box Green Layer 2
            Column(
              children: [
                Container(
                  width: width * 0.6,
                  height: height * 0.1,
                  decoration: BoxDecoration(
                    color: Color(0xFF39696A),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Center(child: Text(textTitle, style: tsHeading3BoldWhite,)),
                )
              ],
            )
          ],
        ),
        isArrow ? SvgPicture.asset("assets/icon/icon_arrow_black_desktop.svg") : Container(),
      ],
    );

  }

  @override
  Widget buildMobilePage(context) {
    // TODO: implement buildMobilePage
    final Size mediaQuery = MediaQuery.of(context).size;
    final double width = mediaQuery.width;
    final double height = mediaQuery.height;

    return Column(
      children: [
        Stack(
          alignment: Alignment.topCenter,
          children: [
            Container(
              margin: EdgeInsets.only(top: height * 0.02),
              padding: EdgeInsets.symmetric(horizontal: width * 0.03, vertical: height * 0.025),
              decoration: BoxDecoration(
                color: Color(0xFFFAFFFF),
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    offset: Offset(0, 3),
                    blurRadius: 6,
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      "assets/images/sejarah_$imagePath",
                      fit: BoxFit.fitWidth,
                      width: width,
                      height: height * 0.175,
                    ),
                  ),

                  SizedBox(height: height * 0.015),

                  Container(
                      padding: EdgeInsets.symmetric(horizontal: width * 0.02),
                      child: Text(textDetail, style: tsParagraph10MediumBlack, textAlign: TextAlign.center,)
                  ),
                ],
              ),
            ),

            Column(
              children: [
                Container(
                  width: width * 0.5,
                  height: height * 0.05,
                  decoration: BoxDecoration(
                    color: Color(0xFF39696A),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(child: Text(textTitle, style: tsParagraph12BoldWhite,)),
                )
              ],
            )
          ],
        ),
        isArrow ? SvgPicture.asset("assets/icon/icon_arrow_black_mobile.svg") : Container(),
      ],
    );
  }
}