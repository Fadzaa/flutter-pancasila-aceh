import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_pancasila_aceh/common/base/abstract_responsive_state.dart';
import 'package:web_pancasila_aceh/common/helper/themes.dart';

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
    // TODO: implement buildDesktopPage
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(horizontal: 108),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Selain kuliner, ada juga wisata",
            style: tsHeading3MediumBlack,
          ),

          Text(
            "Wisata Provinsi Aceh",
            style: tsHeading1BoldBlack,
          ),

          //Grid Card
          Container(
            width: 508,
            child: Stack(
              children: [
                //Grid Card
                Container(
                  width: 508,
                  height: 516,
                  margin: EdgeInsets.only(top: 130),
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
                        "Pantai Pasir Putih",
                        style: GoogleFonts.poppins(
                            color: primaryTextColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 28),
                      ),
                      Text(
                        "Pantai yang memiliki pasir berwarna putih yang halus dan merupakan daya tarik utama bagi para pengunjung untuk berlibur dan bersantai di tepi laut.",
                        style: GoogleFonts.poppins(
                            color: primaryTextColor,
                            fontWeight: FontWeight.w500,
                            fontSize: 20),
                        textAlign: TextAlign.center,
                      ),
                      ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              backgroundColor: actionColor,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(34)),
                              fixedSize: Size(146, 49)),
                          child: Text("Lihat"))
                    ],
                  ),
                ),

                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    width: 413,
                    height: 246,
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

          // //Big Container Card
          Container(
            width: 877,
            child: Stack(
              children: [
                //Grid Card
                Container(
                  width: 877,
                  height: 531,
                  margin: EdgeInsets.only(top: 130),
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
                        "Masjid Baiturrahman",
                        style: GoogleFonts.poppins(
                            color: primaryTextColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 28),
                      ),
                      Text(
                        "Masjid Baiturrahman adalah salah satu masjid paling bersejarah di Aceh, Indonesia, yang menjadi simbol penting dalam sejarah Aceh dan merupakan salah satu peninggalan arsitektur Islam terkemuka di daerah tersebut.",
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
                                  fixedSize: Size(146, 49)),
                              child: Text("Lihat")),
                        ],
                      )
                    ],
                  ),
                ),

                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    width: 702,
                    height: 246,
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
                          onPressed: () {},
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
