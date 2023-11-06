import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_pancasila_aceh/app/pages/detail_page/detail_wisata_page/widgets/text_bullet_list.dart';
import 'package:web_pancasila_aceh/common/base/abstract_responsive_state.dart';
import 'package:web_pancasila_aceh/common/helper/themes.dart';

class DetailKulinerComponentTwo extends ResponsiveScreenState {
  @override
  Widget build(BuildContext context) {
    return super.build(context);
  }

  @override
  Widget buildDesktopPage(context) {
    final Size mediaQuery = MediaQuery.of(context).size;
    final double width = mediaQuery.width;
    final double height = mediaQuery.height;

    return Container(
      margin: EdgeInsets.symmetric(horizontal: width * 0.09),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Yakin Tidak Tertarik?', style: tsHeading1BoldBlack),
          SizedBox(height: height * 0.03),
          Row(
            children: [
              Column(
                children: [
                  Container(
                    height: height * 0.35,
                    width: width * 0.4,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                        'assets/images/kuliner_ayam_tangkap_one.jpg',
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Container(
                    height: height * 0.35,
                    width: width * 0.4,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                        'assets/images/kuliner_ayam_tangkap_two.jpg',
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: width * 0.01,
              ),
              Column(
                children: [
                  Container(
                    height: height * 0.35,
                    width: width * 0.4,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                        'assets/images/kuliner-ayam-tangkap-three.jpg',
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Container(
                    height: height * 0.35,
                    width: width * 0.4,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                        'assets/images/kuliner-ayam-tangkap-four.jpg',
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: height * 0.3),
        ],
      ),
    );
  }

  @override
  Widget buildMobilePage(context) {
    final Size mediaQuery = MediaQuery.of(context).size;
    final double width = mediaQuery.width;
    final double height = mediaQuery.height;

    return Container(
      margin: EdgeInsets.symmetric(horizontal: width * 0.1),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Yakin Tidak Tertarik?", style: tsHeading4BoldBlack),
          SizedBox(height: height * 0.02),
          Row(
            children: [
              Column(
                children: [
                  Container(
                    width: width * 0.39,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                        'assets/images/kuliner_ayam_tangkap_one.jpg',
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.008,
                  ),
                  Container(
                    width: width * 0.39,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                        'assets/images/kuliner_ayam_tangkap_two.jpg',
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: width * 0.015,
              ),
              Column(
                children: [
                  Container(
                    width: width * 0.39,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                        'assets/images/kuliner-ayam-tangkap-three.jpg',
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.008,
                  ),
                  Container(
                    width: width * 0.39,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                        'assets/images/kuliner-ayam-tangkap-four.jpg',
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: height * 0.1),
        ],
      ),
    );
  }
}
