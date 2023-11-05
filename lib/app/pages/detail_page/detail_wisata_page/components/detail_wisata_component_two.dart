import 'package:flutter/material.dart';
import 'package:web_pancasila_aceh/common/base/abstract_responsive_state.dart';
import 'package:web_pancasila_aceh/common/helper/themes.dart';

class DetailWisataComponentTwo extends ResponsiveScreenState {
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
            SizedBox(height: height * 0.05),
            Text('Pantai Pasir Putih', style: tsHeading1BoldBlack),
            SizedBox(height: height * 0.04),
            Container(
              height: height * 0.5,
              width: width * 0.9,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                    'assets/images/wisata_pantai_pasir_putih_description.png',
                    fit: BoxFit.fitWidth),
              ),
            ),
            SizedBox(height: height * 0.1),
            Text(
              'Pantai Pasir Putih Aceh, yang terletak di kawasan Lhoknga, Banda Aceh, merupakan salah satu destinasi pantai paling terkenal di Provinsi Aceh, Indonesia. Pantai ini menawarkan pesona alam yang menakjubkan dengan pasir putih yang indah, air laut yang jernih, serta ombak yang cocok untuk berselancar. Wisatawan dapat menikmati berbagai aktivitas, seperti berjemur di pantai, berenang, atau berselancar di ombaknya yang cukup besar. Selain itu, Pantai Pasir Putih juga menjadi saksi keindahan matahari terbenam yang spektakuler. Di sekitar pantai, terdapat warung-warung makan yang menyajikan hidangan khas Aceh, menjadikannya tempat yang ideal untuk bersantai, menikmati keindahan alam, dan mencicipi kuliner lokal yang lezat.',
              style: tsParagraph16MediumBlack.copyWith(height: 2.25),
            ),
          ],
        )
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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: height * 0.05),
            Text('Aceh indah bukan?', style: tsParagraph12MediumGrey),
            Text('Pantai Pasir Putih', style: tsHeading4BoldGrey),
            SizedBox(height: height * 0.04),
            Container(
              height: height * 0.2,
              width: width * 0.9,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                    'assets/images/wisata_pantai_pasir_putih_description.png',
                    fit: BoxFit.fitWidth),
              ),
            ),
            SizedBox(height: height * 0.035),
            Text(
              'Pantai Pasir Putih Aceh, yang terletak di kawasan Lhoknga, Banda Aceh, merupakan salah satu destinasi pantai paling terkenal di Provinsi Aceh, Indonesia. Pantai ini menawarkan pesona alam yang menakjubkan dengan pasir putih yang indah, air laut yang jernih, serta ombak yang cocok untuk berselancar. Wisatawan dapat menikmati berbagai aktivitas, seperti berjemur di pantai, berenang, atau berselancar di ombaknya yang cukup besar. Selain itu, Pantai Pasir Putih juga menjadi saksi keindahan matahari terbenam yang spektakuler. Di sekitar pantai, terdapat warung-warung makan yang menyajikan hidangan khas Aceh, menjadikannya tempat yang ideal untuk bersantai, menikmati keindahan alam, dan mencicipi kuliner lokal yang lezat.',
              style: tsParagraph12MediumBlack,
            ),
          ],
        )
    );
  }
}
