import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_pancasila_aceh/app/pages/detail_page/detail_wisata_page/widgets/text_bullet_list.dart';
import 'package:web_pancasila_aceh/common/base/abstract_responsive_state.dart';
import 'package:web_pancasila_aceh/common/helper/themes.dart';

class DetailWisataComponentThree extends ResponsiveScreenState {
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
        margin: EdgeInsets.symmetric(horizontal: width * 0.1),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: height * 0.06),
            const Divider(
              height: 1,
              color: Colors.black,
              thickness: 1,
            ),
            SizedBox(height: height * 0.06),
            Text(
              'Highlight',
              style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                      color: primaryTextColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 16)),
            ),
            textBulletList(
                textValue:
                    'Pasir Putih yang Indah: Pantai ini terkenal karena pasirnya yang putih dan halus yang membentang sepanjang pantai, menciptakan pemandangan yang sangat indah.'),
            textBulletList(
                textValue:
                    'Ombak yang Cocok untuk Berselancar: Ombak yang cukup besar di pantai ini menjadikannya tempat yang populer bagi para peselancar, baik yang berpengalaman maupun pemula.'),
            textBulletList(
                textValue:
                    'Pemandangan Matahari Terbenam yang Spektakuler: Pantai ini juga dikenal sebagai tempat yang sempurna untuk menikmati matahari terbenam yang memukau, menciptakan momen berkesan bagi pengunjung.'),
            SizedBox(height: height * 0.2),
          ],
        ));
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
            SizedBox(height: height * 0.06),
            const Divider(
              height: 1,
              color: Colors.black,
              thickness: 1,
            ),
            SizedBox(height: height * 0.06),
            Text(
              'Highlight',
              style: tsParagraph12BoldBlack,
            ),
            textBulletList(
                textValue:
                    'Pasir Putih yang Indah: Pantai ini terkenal karena pasirnya yang putih dan halus yang membentang sepanjang pantai, menciptakan pemandangan yang sangat indah.'),
            textBulletList(
                textValue:
                    'Ombak yang Cocok untuk Berselancar: Ombak yang cukup besar di pantai ini menjadikannya tempat yang populer bagi para peselancar, baik yang berpengalaman maupun pemula.'),
            textBulletList(
                textValue:
                    'Pemandangan Matahari Terbenam yang Spektakuler: Pantai ini juga dikenal sebagai tempat yang sempurna untuk menikmati matahari terbenam yang memukau, menciptakan momen berkesan bagi pengunjung.'),
            SizedBox(height: height * 0.1),
          ],
        ));
  }
}
