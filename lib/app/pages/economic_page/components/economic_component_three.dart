import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:web_pancasila_aceh/app/pages/economic_page/widget/economic_card1_widget.dart';
import 'package:web_pancasila_aceh/app/pages/economic_page/widget/economic_card2_widget.dart';
import 'package:web_pancasila_aceh/app/pages/economic_page/widget/economic_card3_widget.dart';
import 'package:web_pancasila_aceh/common/helper/themes.dart';



import 'package:web_pancasila_aceh/common/base/abstract_responsive_state.dart';

class EconomicComponentThree extends ResponsiveScreenState {

  @override
  Widget build(BuildContext context) {
    return super.build(context);
  }

  @override
  Widget buildDesktopPage(context) {

    // TODO: implement buildDesktopPage
    return Container(
      child: Column(
        children: [
          Center(
            child: Text(
              "Mau tau tantangannya?",
              style: tsHeading3MediumBlack,
            ),
          ),
          Center(
            child: Text(
              "Tantangan Ekonomi di Aceh",
              style: tsHeading1BoldBlack,
            ),
          ),
          SizedBox(height: 100),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                EconomicCardVertical(
                  professionImage: "assets/images/perekonomian_pariwisata.png", 
                  professionName: "Infrastruktur", 
                  professionDescription: "Keterbatasan infrastruktur dan konektivitas dapat menghambat pertumbuhan ekonomi dan akses ke pasar."
                ),
                SizedBox(width: 50),
                EconomicCardVertical(
                  professionImage: "assets/images/perekonomian_pariwisata.png", 
                  professionName: "Infrastruktur", 
                  professionDescription: "Keterbatasan infrastruktur dan konektivitas dapat menghambat pertumbuhan ekonomi dan akses ke pasar."
                )
              ],
            ),
          ),

          SizedBox(height: 30),
          EconomicCardHorizontal(
            professionImage: "assets/images/perekonomian_pariwisata.png", 
            professionName: "Infrastruktur", 
            professionDescription: "Keterbatasan infrastruktur dan konektivitas dapat menghambat pertumbuhan ekonomi dan akses ke pasar."
          ),
        ],
      ),
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
              "Mau tau tantangannya?",
              style: tsHeading5MediumBlack,
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: width * 0.3),
            child: Text(
              "Tantangan Ekonomi Aceh",
              style: tsHeadingMobile,
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: height * 0.1),
          economicCardMobile(
            width: width * 0.9,
            height: height * 0.35,
            professionName: "Perubahan Iklim",
            professionDescription: "Aceh mengalami dampak perubahan iklim, seperti banjir, tanah longsor, dan kenaikan permukaan laut, yang dapat merusak infrastruktur dan pertanian.",
            professionImage: "assets/images/perekonomian_pariwisata.png"
          ),
          SizedBox(height: height * 0.05),
          economicCardMobile(
            width: width * 0.9,
            height: height * 0.35,
            professionName: "Perubahan Iklim",
            professionDescription: "Aceh mengalami dampak perubahan iklim, seperti banjir, tanah longsor, dan kenaikan permukaan laut, yang dapat merusak infrastruktur dan pertanian.",
            professionImage: "assets/images/perekonomian_pariwisata.png"
          ),
          SizedBox(height: height * 0.05),
          economicCardMobile(
            width: width * 0.9,
            height: height * 0.35,
            professionName: "Perubahan Iklim",
            professionDescription: "Aceh mengalami dampak perubahan iklim, seperti banjir, tanah longsor, dan kenaikan permukaan laut, yang dapat merusak infrastruktur dan pertanian.",
            professionImage: "assets/images/perekonomian_pariwisata.png"
          )
        ]
      ),
    );
  }
}