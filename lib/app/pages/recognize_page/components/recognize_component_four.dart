import 'package:flutter/material.dart';
import 'package:web_pancasila_aceh/common/base/abstract_responsive_state.dart';

import '../../../../common/helper/themes.dart';

class RecognizeComponentFour extends ResponsiveScreenState {
  RecognizeComponentFour({
    Key? key,
  });

  @override
  Widget build(BuildContext context) {
    return super.build(context);
  }

  @override
  Widget buildDesktopPage(BuildContext context) {
    // TODO: implement buildDesktopPage
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: EdgeInsets.only(left: 108, top: 80),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Budayanya juga beragam",
              style: tsHeading3MediumBlack,
            ),
            Text(
              "Budaya Provinsi Aceh",
              style: tsHeading1BoldBlack,
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                Column(
                  children: [
                    Container(
                      height: 340,
                      width: 972,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20)),
                          image: DecorationImage(
                              image:
                                  AssetImage("assets/images/budaya_aceh_1.jpg"),
                              fit: BoxFit.cover)),
                    ),
                    Container(
                      height: 340,
                      width: 972,
                      padding: EdgeInsets.only(left: 62, right: 62, bottom: 25),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20)),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const Spacer(),
                          Text(
                            "Tari Saman adalah tarian tradisional Aceh yang melibatkan gerakan tangan yang cepat dan ritmik serta vokal yang khas, sering kali diiringi oleh musik gendang.",
                            style: tsHeading4MediumBlack,
                            textAlign: TextAlign.center,
                          ),
                          const Spacer(),
                          ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  fixedSize: Size(146, 51),
                                  backgroundColor: actionColor,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(34))),
                              child: Text(
                                "Lihat",
                                style: tsHeading5BoldWhite,
                              ))
                        ],
                      ),
                    )
                  ],
                ),
                Container(
                  width: 478,
                  height: 68,
                  decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(24)),
                  child: Center(
                    child: Text(
                      "Tari Saman",
                      style: tsHeading3BoldWhite,
                    ),
                  ),
                )
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
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: EdgeInsets.only(top: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Budayanya juga beragam",
              style: tsParagraph12MediumBlack,
            ),
            Text(
              "Budaya Provinsi Aceh",
              style: tsHeading3BoldBlack,
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                Column(
                  children: [
                    Container(
                      height: 168,
                      width: 290,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20)),
                          image: DecorationImage(
                              image:
                                  AssetImage("assets/images/budaya_aceh_1.jpg"),
                              fit: BoxFit.cover)),
                    ),
                    Container(
                      height: 168,
                      width: 290,
                      padding: EdgeInsets.only(left: 24, right: 24, bottom: 25),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20)),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Spacer(),
                          Text(
                            "Tari Saman adalah tarian tradisional Aceh yang melibatkan gerakan tangan yang cepat dan ritmik serta vokal yang khas, sering kali diiringi oleh musik gendang.",
                            style: tsParagraph10MediumBlack,
                            textAlign: TextAlign.center,
                          ),
                          const Spacer(),
                          ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  fixedSize: Size(88, 31),
                                  backgroundColor: actionColor,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(34))),
                              child: Text(
                                "Lihat",
                                style: tsParagraph12SemiBoldWhite,
                              ))
                        ],
                      ),
                    )
                  ],
                ),
                Container(
                  width: 192,
                  height: 31,
                  decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(24)),
                  child: Center(
                    child: Text(
                      "Tari Saman",
                      style: tsParagraph12BoldWhite,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
