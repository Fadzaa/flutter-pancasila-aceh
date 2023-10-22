import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_pancasila_aceh/common/base/abstract_responsive_state.dart';
import 'package:web_pancasila_aceh/common/helper/themes.dart';

class HistoryComponentOne extends ResponsiveScreenState {

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
      width: width,
      margin: EdgeInsets.symmetric(horizontal: width * 0.1),
      child: Column(
        children: [
          SizedBox(height: height * 0.05),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  width: width * 0.15,
                  height: height * 0.45,
                  child: AutoSizeText(
                    "Masjid \nBaiturrahman, Ikon \nAceh yang \nJadi \nPerhatian \nDunia",
                    style: tsHeading2SemiBoldBlack,
                    group: AutoSizeGroup(),
                  )),

              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                        "assets/images/sejarah_masjid_baiturrahman.png",
                        fit: BoxFit.fitHeight,
                        width: width * 0.63,
                        height: height * 0.45,
                      ),
                    ),

                    SizedBox(height: height * 0.025),

                    Text(
                      "Masjid Baiturrahman, Aceh",
                      style: TextStyle(
                        color: primaryTextColor,
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),

          SizedBox(height: height * 0.05),

          Text(
            "         Banda Aceh – Masjid Raya Baiturrahman, Banda Aceh salah satu destinasi wisata religi favorit wisatawan di Kota Banda Aceh. Masjid bersejarah ini bukan hanya ikon Serambi Mekkah, tapi juga simbol perjuangan dan penyebaran Islam di Indonesia hingga semenjung Asia Tenggara.“Dengan latar belakang sejarah itu, wajar kalau keberadaan masjid ini mengundang banyak perhatian masyarakat dunia yang ingin mengetahui sejarah Aceh maupun perkembangan Islam di nusantara,” kata Gubernur Aceh, Zaini Abdullah.",
            style: tsHeading5MediumBlack,
          ),

          SizedBox(height: height * 0.01),

          Text(
            "         Masjid dibangun sejak abad 17 ini selama ini ramai dikunjungi wisatawan baik dalam maupun luar negeri. Terutama dari Malaysia. Bagi warga negeri Jiran yang berkunjung ke Aceh, mereka serasa wajib datang dulu ke Masjid Baiturrahman. “Ini tentu suatu kemuliaan bagi kita,” ujar Zaini.Dengan pembangunan lanskap, infrasruktur serta perluasan area masjid yang sudah dimulai dari kemarin, diharapkan akan semakin banyak wisatawan yang berkunjung ke Masjid Baiturrahman pada masa mendatang.",
            style: tsHeading5MediumBlack,
          ),

          SizedBox(height: height * 0.25),
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
      width: width,
      margin: EdgeInsets.symmetric(horizontal: width * 0.1),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  width: width * 0.35,
                  height: height * 0.22,
                  child: AutoSizeText(
                    "Masjid \nBaiturrah\nman, Ikon \nAceh \nyang Jadi \nPerhatian \nDunia",
                    group: AutoSizeGroup(),
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            color: greyTextColor,
                            fontWeight: FontWeight.w700,
                            fontSize: 16
                        ),
                    ),
                  )),

              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                        "assets/images/sejarah_masjid_baiturrahman.png",
                        fit: BoxFit.fitHeight,
                        width: width * 0.4,
                        height: height * 0.22,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),

          SizedBox(height: height * 0.015),

          Text("Masjid Baiturrahman, Aceh", style: tsParagraph12MediumGrey),

          SizedBox(height: height * 0.02),

          RichText(
            text: TextSpan(
                text: '         Banda Aceh – ',
                style: tsParagraph12BoldBlack,
                children: [
                  TextSpan(
                      text: 'Masjid Raya Baiturrahman, Banda Aceh salah satu destinasi wisata religi favorit wisatawan di Kota Banda Aceh. Masjid bersejarah ini bukan hanya ikon Serambi Mekkah, tapi juga simbol perjuangan dan penyebaran Islam di Indonesia hingga semenjung Asia Tenggara.“Dengan latar belakang sejarah itu, wajar kalau keberadaan masjid ini mengundang banyak perhatian masyarakat dunia yang ingin mengetahui sejarah Aceh maupun perkembangan Islam di nusantara,” kata Gubernur Aceh, Zaini Abdullah.',
                      style: tsParagraph12MediumBlack
                  )
                ]),
          ),

          SizedBox(height: height * 0.01),

          Text(
            "         Masjid dibangun sejak abad 17 ini selama ini ramai dikunjungi wisatawan baik dalam maupun luar negeri. Terutama dari Malaysia. Bagi warga negeri Jiran yang berkunjung ke Aceh, mereka serasa wajib datang dulu ke Masjid Baiturrahman. “Ini tentu suatu kemuliaan bagi kita,” ujar Zaini.Dengan pembangunan lanskap, infrasruktur serta perluasan area masjid yang sudah dimulai dari kemarin, diharapkan akan semakin banyak wisatawan yang berkunjung ke Masjid Baiturrahman pada masa mendatang.",
            style: tsParagraph12MediumBlack,
          ),

          SizedBox(height: height * 0.125),
        ],
      ),
    );
  }
}