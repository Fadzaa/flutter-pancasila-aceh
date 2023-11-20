import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:web_pancasila_aceh/app/pages/detail_page/detail_wisata_page/widgets/staggered_grid_tile_detail_wisata.dart';
import 'package:web_pancasila_aceh/common/base/abstract_responsive_state.dart';
import 'package:web_pancasila_aceh/common/helper/themes.dart';

import '../../../../../common/model/couliner.dart';

class DetailKulinerComponentOne extends ResponsiveScreenState {
  @override
  Widget build(BuildContext context) {
    return super.build(context);
  }

  @override
  Widget buildDesktopPage(context) {
    final Size mediaQuery = MediaQuery.of(context).size;
    final double width = mediaQuery.width;
    final double height = mediaQuery.height;
    Couliner couliner = Get.arguments;

    return Container(
      margin: EdgeInsets.symmetric(horizontal: width * 0.1),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: height * 0.05),
          Container(
            height: height * 0.5,
            width: width * 0.9,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(couliner.imageCard,
                  fit: BoxFit.fitWidth),
            ),
          ),
          SizedBox(height: height * 0.05),
          Text(couliner.name, style: tsHeading1BoldBlack),
          SizedBox(height: height * 0.1),
          Text(
            couliner.detailDescription,
            style: tsParagraph16MediumBlack.copyWith(height: 2.25),
          ),
          SizedBox(height: height * 0.15),
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
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: height * 0.05),
          Text('Kamu mau makan?', style: tsParagraph12MediumGrey),
          Text('Ayam Tangkap', style: tsHeading4BoldGrey),
          SizedBox(height: height * 0.04),
          Container(
            height: height * 0.2,
            width: width * 0.9,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset('assets/images/kuliner_ayam_tangkap.jpg',
                  fit: BoxFit.fitWidth),
            ),
          ),
          SizedBox(height: height * 0.035),
          Text(
            'Ayam Tangkap adalah hidangan khas Aceh yang terbuat dari potongan ayam yang dimasak dengan bumbu rempah-rempah khas Aceh. Potongan ayam ini biasanya digoreng hingga kecokelatan dan kemudian dimasak dalam bumbu yang kaya akan rempah seperti serai, jahe, bawang merah, bawang putih, kunyit, dan cabai. Hidangan ini memiliki cita rasa yang kaya, dengan kombinasi antara pedas, gurih, dan harum rempah yang khas. Ayam Tangkap sering disajikan dengan nasi putih, lalapan, dan sambal, menciptakan hidangan yang lezat dan menggugah selera. Hidangan ini merupakan salah satu kuliner yang paling terkenal di Aceh dan sering dijajakan di restoran-restoran dan warung makan di wilayah tersebut.',
            style: tsParagraph12MediumBlack,
          ),
          SizedBox(height: height * 0.07),
        ],
      ),
    );
  }
}
