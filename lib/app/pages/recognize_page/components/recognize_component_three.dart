import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_pancasila_aceh/common/base/abstract_responsive_state.dart';
import 'package:web_pancasila_aceh/common/helper/themes.dart';
import 'package:web_pancasila_aceh/common/mock_data/mock_tour_data.dart';
import 'package:web_pancasila_aceh/common/routes/app_pages.dart';

import '../../../../common/model/tour.dart';

class RecognizeComponentThree extends ResponsiveScreenState {
  RecognizeComponentThree({
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
      width: width,
      padding: EdgeInsets.symmetric(horizontal: 108),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Selain kuliner, ada juga wisata",
            style: tsHeading3MediumBlack,
          ),

          Text(
            "Wisata Provinsi Aceh",
            style: tsHeading1BoldBlack,
          ),

          SizedBox(height: 100,),

          //Grid Card
          GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
            ),
            itemCount: 4,
            itemBuilder: (context, index) {
              Tour tour = mockTourData[index];
              return TourCard(
                  onTap: () {
                    Get.toNamed(Routes.DETAIL_WISATA_PAGE, arguments: tour);
                  },
                  name: tour.name,
                  description: tour.cardDescription,
                  imagePath: tour.cardImage);
            },
          ),

          // //Big Container Card
          Container(
            width: width * 0.8,
            child: Stack(
              children: [
                //Grid Card
                Container(
                  width: width * 0.8,
                  height: height * 0.6,
                  margin: EdgeInsets.only(top: height * 0.35),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(35),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 111,
                            spreadRadius: 25,
                            offset: Offset(0, 4),
                            color: Colors.black.withOpacity(0.08))
                      ]),
                  padding: EdgeInsets.fromLTRB(36, 132, 36, 37),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        mockTourData[4].name,
                        style: GoogleFonts.poppins(
                            color: primaryTextColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 28),
                      ),
                      Text(
                        mockTourData[4].cardDescription,
                        style: GoogleFonts.poppins(
                            color: primaryTextColor,
                            fontWeight: FontWeight.w500,
                            fontSize: 20),
                        textAlign: TextAlign.center,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: actionColor,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(34)),
                                  fixedSize: Size(width * 0.1, height * 0.05),),
                              child: Text(
                                  "Lihat"
                                  , style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                fontSize: 24
                              )
                              )),
                        ],
                      )
                    ],
                  ),
                ),

                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    width: width * 0.65,
                    height: height * 0.4,
                    margin: EdgeInsets.only(top: 50),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                            image:
                                NetworkImage(mockTourData[4].cardImage),
                            fit: BoxFit.fill)),
                  ),
                ),
              ],
            ),
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
      padding: EdgeInsets.symmetric(horizontal: 35),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Selain kuliner, ada juga wisata",
            style: tsParagraph12MediumBlack,
          ),

          Text(
            "Wisata Provinsi Aceh",
            style: tsHeadingMobile,
          ),

          //Grid Card
          Container(
            width: 290,
            child: Stack(
              children: [
                //Grid Card
                Container(
                  width: 290,
                  height: 286,
                  margin: EdgeInsets.only(top: 80),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(35),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 111,
                            spreadRadius: 25,
                            offset: Offset(0, 4),
                            color: Colors.black.withOpacity(0.08))
                      ]),
                  padding: EdgeInsets.fromLTRB(23, 104, 23, 19),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Pantai Pasir Putih",
                        style: tsParagraph16BoldBlack,
                      ),
                      Text(
                        "Pantai yang memiliki pasir berwarna putih yang halus dan merupakan daya tarik utama bagi para pengunjung untuk berlibur dan bersantai di tepi laut.",
                        style: GoogleFonts.poppins(
                            color: primaryTextColor,
                            fontWeight: FontWeight.w500,
                            fontSize: 10),
                        textAlign: TextAlign.center,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            Get.toNamed(Routes.DETAIL_WISATA_PAGE, arguments: mockTourData[0]);
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: actionColor,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(34)),
                              fixedSize: Size(123, 33)),
                          child: Text("Lihat"))
                    ],
                  ),
                ),

                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    width: 241,
                    height: 148,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                            image:
                                AssetImage("assets/images/wisata_aceh_1.jpeg"),
                            fit: BoxFit.fill)),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


class TourCard extends StatelessWidget {
  const TourCard({
    required this.onTap,
    required this.name,
    required this.description,
    required this.imagePath,
    super.key});

  final VoidCallback onTap;
  final String name;
  final String description;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Container(
      width: width * 0.35,
      child: Stack(
        children: [
          //Grid Card
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: width * 0.35,
              height: height * 0.5,
              margin: EdgeInsets.only(top: height * 0.2),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(35),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 111,
                        spreadRadius: 25,
                        offset: Offset(0, 4),
                        color: Colors.black.withOpacity(0.08))
                  ]),
              padding: EdgeInsets.fromLTRB(36, 132, 36, 37),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    name,
                    style: GoogleFonts.poppins(
                        color: primaryTextColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 28),
                  ),
                  Text(
                    description,
                    style: GoogleFonts.poppins(
                        color: primaryTextColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                  ElevatedButton(
                      onPressed: onTap,
                      style: ElevatedButton.styleFrom(
                          backgroundColor: actionColor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(34)),
                          fixedSize: Size(width * 1, 50)),
                      child: Text("Lihat", style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 24
                      )), )
                ],
              ),
            ),
          ),

          Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: width * 0.25,
              height: height * 0.275,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                      image:
                      NetworkImage(imagePath),
                      fit: BoxFit.fill)),
            ),
          ),
        ],
      ),
    );
  }
}
