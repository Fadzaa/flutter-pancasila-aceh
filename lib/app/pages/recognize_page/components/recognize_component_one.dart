import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_pancasila_aceh/common/base/abstract_responsive_state.dart';
import 'package:web_pancasila_aceh/common/helper/themes.dart';

class RecognizeComponentOne extends ResponsiveScreenState {
  RecognizeComponentOne({
    Key? key,
  });

  Widget imageCard(
      {required double width,
      required double height,
      required String imagePath}) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          boxShadow:  [
            BoxShadow(
              color: Colors.black.withOpacity(0.7),
              offset: Offset(0, 4),
              blurRadius: 6
            )
          ],
          image:
              DecorationImage(image: AssetImage(imagePath), fit: BoxFit.fill)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return super.build(context);
  }

  @override
  Widget buildDesktopPage(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    // TODO: implement buildDesktopPage
    return Padding(
      padding: EdgeInsets.fromLTRB(108, 117, 118, 0),
      child: Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                      text: 'Aceh tu \nMenarik',
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              color: primaryTextColor,
                              fontWeight: FontWeight.w700,
                              fontSize: 60)),
                      children: [
                        TextSpan(
                            text: ',euy',
                            style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                    color: actionColor,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 60)))
                      ]),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 30.0),
                      child: imageCard(
                          width: width * 0.35,
                          height: height * 0.25,
                          imagePath: "assets/images/icon_aceh_1.JPG"),
                    ),
                    SizedBox(
                      width: 24,
                    ),
                    imageCard(
                        width: width * 0.15,
                        height: height * 0.24,
                        imagePath: "assets/images/icon_aceh_2.jpg"),
                    SizedBox(
                      width: 41,
                    )
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                imageCard(
                    width: width * 0.35,
                    height: height * 0.35,
                    imagePath: "assets/images/icon_aceh_3.jpg"),
                imageCard(
                    width: width * 0.275,
                    height: height * 0.4,
                    imagePath: "assets/images/icon_aceh_4.jpg"),
                imageCard(
                    width: width * 0.2,
                    height: height * 0.3,
                    imagePath: "assets/images/icon_aceh_5.jpeg")
              ],
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget buildMobilePage(BuildContext context) {
    // TODO: implement buildMobilePage
    return Padding(
      padding: EdgeInsets.only(
        left: 35,
        top: 50,
      ),
      child: Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                      text: 'Aceh tu \nMenarik',
                      style: tsHeading3BoldBlack,
                      children: [
                        TextSpan(
                            text: ',euy',
                            style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                    color: actionColor,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 25)))
                      ]),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 30.0),
                      child: imageCard(
                          width: 76,
                          height: 100,
                          imagePath: "assets/images/icon_aceh_1.JPG"),
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    imageCard(
                        width: 76,
                        height: 52,
                        imagePath: "assets/images/icon_aceh_2.jpg"),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                imageCard(
                    width: 172,
                    height: 100,
                    imagePath: "assets/images/icon_aceh_3.jpg"),
                imageCard(
                    width: 76,
                    height: 112,
                    imagePath: "assets/images/icon_aceh_4.jpg"),
                imageCard(
                    width: 76,
                    height: 96,
                    imagePath: "assets/images/icon_aceh_5.jpeg")
              ],
            )
          ],
        ),
      ),
    );
  }
}
