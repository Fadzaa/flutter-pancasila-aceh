import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:web_pancasila_aceh/app/pages/landing_page/components/economical_card_widget.dart';
import 'package:web_pancasila_aceh/common/helper/themes.dart';

Widget economicComponentTwo() {
  return Column(
    children: [
      Center(
        child: Text(
          "Sumber ekonomi Aceh?",
          style: tsHeading3MediumBlack,
        ),
      ),
      Center(
        child: Text(
          "Sektor Utama Perekonomian Aceh",
          style: tsHeading1BoldBlack,
        ),
      ),
      SizedBox(height: 100),
      EconomicalCard(
        professionName: "Pertanian", 
        professionDescription: "Sektor pertanian di Aceh mencakup budidaya padi, kelapa sawit, kopi, karet, buah-buahan, dan sayuran, serta memiliki peran penting dalam mendukung ketahanan pangan dan perekonomian provinsi ini.", 
        professionImage: "assets/images/perekonomian_pertanian.png"
      )
    ],
  );
}