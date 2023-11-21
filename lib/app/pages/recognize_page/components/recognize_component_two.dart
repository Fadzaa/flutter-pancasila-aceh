import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_pancasila_aceh/common/base/abstract_responsive_state.dart';
import 'package:web_pancasila_aceh/common/helper/themes.dart';
import 'package:web_pancasila_aceh/common/mock_data/mock_couliner_data.dart';
import 'package:web_pancasila_aceh/common/routes/app_pages.dart';

import '../../../../common/model/couliner.dart';

class RecognizeComponentTwo extends ResponsiveScreenState {
  RecognizeComponentTwo({
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
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 108),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Aceh itu banyak kulinernya lhoo",
                  style: tsHeading3MediumBlack,
                ),
                Text(
                  "Kuliner Khas Provinsi Aceh",
                  style: tsHeading1BoldBlack,
                ),
              ],
            ),
          ),

          SizedBox(
            height: 65,
          ),

          //Temporary Padding
          CarouselSlider.builder(
            // physics: const NeverScrollableScrollPhysics(),
            options: CarouselOptions(
              height: height * 0.6,
              viewportFraction: 0.75,
              enableInfiniteScroll: false,
              enlargeCenterPage: true,
              initialPage: 1,
              onPageChanged: (index, reason) {
                print(index);
              },
            ),
            itemCount: mockCoulinerData.length,
            itemBuilder: (context, index, realIndex) {
              Couliner couliner = mockCoulinerData[index];
              return CoulinerCard(
                onTap: () {
                  Get.toNamed(Routes.DETAIL_KULINER_PAGE, arguments: couliner);
                },
                  name: couliner.name,
                  description: couliner.cardDescription,
                  image: couliner.imageCard
              );
            },
          )
        ],
      ),
    );
  }

  @override
  Widget buildMobilePage(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Aceh itu banyak kulinernya lhoo",
                style: tsParagraph12MediumBlack,
              ),
              Text(
                "Kuliner Khas \nProvinsi Aceh",
                style: tsHeading3BoldBlack,
                textAlign: TextAlign.center,
              ),
            ],
          ),

          SizedBox(
            height: 65,
          ),

          //Temporary Padding
          Stack(
            children: [
              Container(
                height: 454,
                width: 290,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    image: DecorationImage(
                        image: AssetImage("assets/images/kuliner_sie_itik.jpg"),
                        fit: BoxFit.fill)),
                child: Container(
                  height: 394,
                  width: 968,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.black.withOpacity(0),
                            Colors.black.withOpacity(0.55)
                          ])),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(26, 0, 26, 28),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Sie Itik",
                          style: tsParagraph18BoldWhite,
                        ),
                        SizedBox(
                          height: 18,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Hidangan bebek panggang atau goreng khas Aceh yang disajikan dengan saus pedas berbumbu kaya.",
                              style: tsParagraph12MediumWhite,
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.transparent,
                                    side: BorderSide(color: actionColor),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(34),
                                    ),
                                    fixedSize: Size(109, 32)),
                                child: Text("Lihat",
                                    style: GoogleFonts.poppins(
                                        color: actionColor,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600)))
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class CoulinerCard extends StatelessWidget {
  const CoulinerCard({
    required this.onTap,
    required this.name,
    required this.description,
    required this.image,
    super.key
  });

  final VoidCallback onTap;
  final String name;
  final String description;
  final String image;

  @override
  Widget build(BuildContext context) {
    double width =  MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      height: height * 0.4,
      width: width * 0.85,
      margin: EdgeInsets.symmetric(vertical: 15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          // boxShadow: const [
          //   BoxShadow(
          //       color: Colors.black,
          //       blurRadius: 11,
          //       offset: Offset(0, 4)
          //   )
          // ],
          image: DecorationImage(
              image:
              AssetImage(image),
              fit: BoxFit.fill)),
      child: Container(
        height: height * 0.4,
        width: width * 0.85,

        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.black.withOpacity(0),
                  Colors.black.withOpacity(0.55)
                ])),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(43, 0, 43, 43),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: tsHeading2SemiBoldWhite,
              ),
              SizedBox(
                height: 18,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(
                    width: 571,
                    child: Text(
                      description,
                      style: tsHeading3MediumWhite,
                    ),
                  ),
                  ElevatedButton(
                      onPressed: onTap,
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          side: BorderSide(color: actionColor),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(34),
                          ),
                          fixedSize: Size(146, 49)),
                      child: Text("Lihat",
                          style: GoogleFonts.poppins(
                              color: actionColor,
                              fontSize: 18,
                              fontWeight: FontWeight.w600)))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

