import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_pancasila_aceh/common/base/abstract_responsive_state.dart';
import 'package:web_pancasila_aceh/common/helper/themes.dart';

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
          Padding(
            padding: const EdgeInsets.only(left: 108),
            child: Stack(
              children: [
                Container(
                  height: 394,
                  width: 968,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      image: DecorationImage(
                          image:
                              AssetImage("assets/images/kuliner_sie_itik.jpg"),
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
                      padding: const EdgeInsets.fromLTRB(43, 0, 43, 43),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Sie Itik",
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
                                  "Hidangan bebek panggang atau goreng khas Aceh yang disajikan dengan saus pedas berbumbu kaya.",
                                  style: tsHeading3MediumWhite,
                                ),
                              ),
                              ElevatedButton(
                                  onPressed: () {},
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
                ),
              ],
            ),
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
                    padding: const EdgeInsets.fromLTRB(43, 0, 43, 43),
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "Hidangan bebek panggang atau goreng khas Aceh yang disajikan dengan saus pedas berbumbu kaya.",
                              style: tsParagraph12MediumWhite,
                            ),
                            ElevatedButton(
                                onPressed: () {},
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
              ),
            ],
          )
        ],
      ),
    );
  }
}
