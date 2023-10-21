import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:web_pancasila_aceh/app/pages/landing_page/widgets/text_footer_dalam_angka.dart';
import 'package:web_pancasila_aceh/common/base/abstract_responsive_state.dart';
import 'package:web_pancasila_aceh/common/helper/themes.dart';


class LandingComponentFive extends ResponsiveScreenState{
  LandingComponentFive({
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
        color: const Color(0xFF104A4B),
        padding: const EdgeInsets.symmetric(horizontal: 90),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.28,
            child: Row(
              children: [
                Expanded(
                    child:
                        Image.asset("assets/images/logo_aceh.jpg", width: 220)),
                const Expanded(
                  child: AutoSizeText(
                    "Dalam angka",
                    style: TextStyle(
                        color: whiteTextColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 32),
                    maxLines: 2,
                  ),
                )
              ],
            ),
          ),
          Row(
            children: [
              textFooterDalamAngka(
                  textSubHeading: "Luas Wilayah",
                  textHeading: "57,366 km²",
                  context: context),
              const SizedBox(width: 50),
              textFooterDalamAngka(
                  textSubHeading: "Jumlah Kecamatan",
                  textHeading: "290",
                  context: context),
              const SizedBox(width: 50),
              textFooterDalamAngka(
                  textSubHeading: "Jumlah Kelurahan",
                  textHeading: "6.515",
                  context: context),
            ],
          ),
          const SizedBox(height: 25),
          Row(
            children: [
              textFooterDalamAngka(
                  textSubHeading: "Jumlah Penduduk Laki-Laki",
                  textHeading: "2.715.386",
                  context: context),
              const SizedBox(width: 50),
              textFooterDalamAngka(
                  textSubHeading: "Jumlah Penduduk Perempuan",
                  textHeading: "2.692.469",
                  context: context),
            ],
          ),
        ]));
  }
  
  @override
  Widget buildMobilePage(BuildContext context) {
    // TODO: implement buildMobilePage
    return Container(
        width: MediaQuery.of(context).size.width,
        color: const Color(0xFF104A4B),
        padding: const EdgeInsets.symmetric(horizontal: 90),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.28,
            child: Row(
              children: [
                Expanded(
                    child:
                        Image.asset("assets/images/logo_aceh.jpg", width: 220)),
                const Expanded(
                  child: AutoSizeText(
                    "Dalam angka",
                    style: TextStyle(
                        color: whiteTextColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 32),
                    maxLines: 2,
                  ),
                )
              ],
            ),
          ),
          Row(
            children: [
              textFooterDalamAngka(
                  textSubHeading: "Luas Wilayah",
                  textHeading: "57,366 km²",
                  context: context),
              const SizedBox(width: 50),
              textFooterDalamAngka(
                  textSubHeading: "Jumlah Kecamatan",
                  textHeading: "290",
                  context: context),
              const SizedBox(width: 50),
              textFooterDalamAngka(
                  textSubHeading: "Jumlah Kelurahan",
                  textHeading: "6.515",
                  context: context),
            ],
          ),
          const SizedBox(height: 25),
          Row(
            children: [
              textFooterDalamAngka(
                  textSubHeading: "Jumlah Penduduk Laki-Laki",
                  textHeading: "2.715.386",
                  context: context),
              const SizedBox(width: 50),
              textFooterDalamAngka(
                  textSubHeading: "Jumlah Penduduk Perempuan",
                  textHeading: "2.692.469",
                  context: context),
            ],
          ),
        ]));
  }
}
