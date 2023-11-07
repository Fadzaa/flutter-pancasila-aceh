import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:web_pancasila_aceh/app/pages/landing_page/components/economical_card_desktop_widget.dart';
import 'package:web_pancasila_aceh/app/pages/landing_page/components/economical_card_mobile_widget.dart';
import 'package:web_pancasila_aceh/common/helper/themes.dart';
import 'package:web_pancasila_aceh/common/base/abstract_responsive_state.dart';


class EconomicComponentTwo extends ResponsiveScreenState {

  @override
  Widget build(BuildContext context) {
    return super.build(context);
  }

  @override
  Widget buildDesktopPage(context) {

    // TODO: implement buildDesktopPage
    return Column(
      children: [
        Center(
          child: Text(
            "Sumber ekonomi Aceh?",
            style: tsHeading3MediumBlack,
            textAlign: TextAlign.center,
          ),
        ),
        Center(
          child: Text(
            "Sektor Utama Perekonomian Aceh",
            style: tsHeading1BoldBlack,
          ),
        ),
        SizedBox(height: 100),
        EconomicalCardDesktop(
          professionName: "Pertanian", 
          professionDescription: "Sektor pertanian di Aceh mencakup budidaya padi, kelapa sawit, kopi, karet, buah-buahan, dan sayuran, serta memiliki peran penting dalam mendukung ketahanan pangan dan perekonomian provinsi ini.", 
          professionImage: "assets/images/perekonomian_pertanian.png"
        )
      ],
    );
  }

  @override
  Widget buildMobilePage(context) {

    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;

    // TODO: implement buildMobilePage
    return Container(
      child: Column(
        children: [
          Center(
            child: Text(
              "Sumber ekonomi Aceh?",
              style: tsHeading5MediumBlack,
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: width * 0.2),
            child: Text(
              "Sektor Utama Perekonomian Aceh",
              style: tsHeadingMobile,
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: height * 0.2),
          EconomicalCardMobile(
            professionName: "Pertanian", 
            professionDescription: "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. ", 
            professionImage: "assets/images/perekonomian_pertanian.png"
          )
        ]
      ),
    );
  }
}
