import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:web_pancasila_aceh/app/pages/landing_page/widgets/text_footer_dalam_angka.dart';
import 'package:web_pancasila_aceh/common/base/abstract_responsive_state.dart';
import 'package:web_pancasila_aceh/common/helper/themes.dart';

class LandingComponentFive extends ResponsiveScreenState {
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
              TextFooterDalamAngka(
                textSubHeading: "Luas Wilayah",
                textHeading: "57,366 km²",
              ),
              const SizedBox(width: 50),
              TextFooterDalamAngka(
                textSubHeading: "Jumlah Kecamatan",
                textHeading: "290",
              ),
              const SizedBox(width: 50),
              TextFooterDalamAngka(
                textSubHeading: "Jumlah Kelurahan",
                textHeading: "6.515",
              ),
            ],
          ),
          const SizedBox(height: 25),
          Row(
            children: [
              TextFooterDalamAngka(
                textSubHeading: "Jumlah Penduduk Laki-Laki",
                textHeading: "2.715.386",
              ),
              const SizedBox(width: 50),
              TextFooterDalamAngka(
                textSubHeading: "Jumlah Penduduk Perempuan",
                textHeading: "2.692.469",
              ),
            ],
          ),
        ]));
  }

  @override
  Widget buildMobilePage(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    // TODO: implement buildMobilePage
    return Container(
        width: width,
        height: MediaQuery.of(context).size.height - (height * 0.3),
        color: const Color(0xFF104A4B),
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.28,
                child: Row(
                  children: [
                    Expanded(
                        child:
                            Image.asset("assets/images/logo.png", width: 220)),
                    const Expanded(
                      child: AutoSizeText(
                        "Dalam angka",
                        style: TextStyle(
                            color: whiteTextColor,
                            fontWeight: FontWeight.w600,
                            fontSize: 16),
                        maxLines: 2,
                      ),
                    )
                  ],
                ),
              ),
              TextFooterDalamAngka(
                textSubHeading: "Luas Wilayah",
                textHeading: "57,366 km²",
              ),
              TextFooterDalamAngka(
                textSubHeading: "Jumlah Kecamatan",
                textHeading: "290",
              ),
              TextFooterDalamAngka(
                textSubHeading: "Jumlah Kelurahan",
                textHeading: "6.515",
              ),
              TextFooterDalamAngka(
                textSubHeading: "Jumlah Penduduk Laki-Laki",
                textHeading: "2.715.386",
              ),
              TextFooterDalamAngka(
                textSubHeading: "Jumlah Penduduk Perempuan",
                textHeading: "2.692.469",
              ),
              SizedBox(height: 50),
            ]));
  }
}
