import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:web_pancasila_aceh/common/base/abstract_responsive_state.dart';
import 'package:web_pancasila_aceh/common/mock_data/mock_culture_data.dart';

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
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    // TODO: implement buildDesktopPage
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 108, top: 80, bottom: 30),
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
              ],
            ),
          ),

          CarouselSlider.builder(
            // physics: const NeverScrollableScrollPhysics(),
            options: CarouselOptions(
              height: height * 1,
              viewportFraction: 0.7,
              enableInfiniteScroll: false,
              enlargeCenterPage: true,
              initialPage: 1,
              onPageChanged: (index, reason) {
                print(index);
              },
            ),
            itemCount: mockCultureData.length,
            itemBuilder: (context, index, realIndex) {
              return CultureCard();
            },
          ),

        ],
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


class CultureCard extends StatelessWidget {
  const CultureCard({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Stack(
      alignment: Alignment.center,
      children: [
        Column(
          children: [
            Container(
              height: height * 0.4,
              width: width * 0.8,
              margin: EdgeInsets.only(top: 20),
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      offset: Offset(0, 3),
                      blurRadius: 6,
                    ),
                  ],
                  image: const DecorationImage(
                      image:
                      AssetImage("assets/images/budaya_aceh_1.jpg"),
                      fit: BoxFit.cover)),
            ),
            Container(
              height: height * 0.4,
              width: width * 0.8,
              padding: const EdgeInsets.only(left: 62, right: 62, bottom: 25),
              margin: EdgeInsets.only(bottom: 20),
              decoration:  BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    offset: Offset(0, 3),
                    blurRadius: 6,
                  ),
                ],
                color: Colors.white,
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
          width: width * 0.35,
          height: height * 0.07,
          margin: EdgeInsets.only(bottom: 20),
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
    );
  }
}

