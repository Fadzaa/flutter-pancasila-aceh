import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:web_pancasila_aceh/app/pages/economic_page/widget/economic_card1_widget.dart';
import 'package:web_pancasila_aceh/app/pages/economic_page/widget/economic_card2_widget.dart';
import 'package:web_pancasila_aceh/common/helper/themes.dart';

class EconomicalComponentThree extends StatelessWidget {
  const EconomicalComponentThree({super.key});

  @override
  Widget build(BuildContext context) {

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
}