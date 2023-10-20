import 'package:flutter/material.dart';
import 'package:web_pancasila_aceh/common/helper/themes.dart';
import 'package:google_fonts/google_fonts.dart';

class HistoryComponentTwoMobile extends StatelessWidget {
  const HistoryComponentTwoMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size mediaQuery = MediaQuery.of(context).size;
    final double width = mediaQuery.width;
    final double height = mediaQuery.height;

    return Container(
      width: width,
      height: height,
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
                  height: height * 0.2,
                  child: Text(
                    "Masjid \nBaiturrahman, Ikon \nAceh yang \nJadi \nPerhatian \nDunia",
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            color: greyTextColor,
                            fontWeight: FontWeight.w700,
                            fontSize: 16
                        )
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
                        height: height * 0.2,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),

          SizedBox(height: 10,),

          Text("Masjid Baiturrahman, Aceh", style: tsParagraph12MediumGrey),

          SizedBox(height: 20),

          Text(
            "         Banda Aceh – Masjid Raya Baiturrahman, Banda Aceh salah satu destinasi wisata religi favorit wisatawan di Kota Banda Aceh. Masjid bersejarah ini bukan hanya ikon Serambi Mekkah, tapi juga simbol perjuangan dan penyebaran Islam di Indonesia hingga semenjung Asia Tenggara.“Dengan latar belakang sejarah itu, wajar kalau keberadaan masjid ini mengundang banyak perhatian masyarakat dunia yang ingin mengetahui sejarah Aceh maupun perkembangan Islam di nusantara,” kata Gubernur Aceh, Zaini Abdullah.",
            style: tsParagraph12MediumBlack,
          ),

          SizedBox(height: 10),

          Text(
            "         Masjid dibangun sejak abad 17 ini selama ini ramai dikunjungi wisatawan baik dalam maupun luar negeri. Terutama dari Malaysia. Bagi warga negeri Jiran yang berkunjung ke Aceh, mereka serasa wajib datang dulu ke Masjid Baiturrahman. “Ini tentu suatu kemuliaan bagi kita,” ujar Zaini.Dengan pembangunan lanskap, infrasruktur serta perluasan area masjid yang sudah dimulai dari kemarin, diharapkan akan semakin banyak wisatawan yang berkunjung ke Masjid Baiturrahman pada masa mendatang.",
            style: tsParagraph12MediumBlack,
          )
        ],
      ),
    );
  }
}
