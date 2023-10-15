import 'package:flutter/material.dart';
import 'package:web_pancasila_aceh/common/helper/themes.dart';

class HistoryComponentTwoDesktop extends StatelessWidget {
  const HistoryComponentTwoDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size mediaQuery = MediaQuery.of(context).size;
    final double width = mediaQuery.width;
    final double height = mediaQuery.height;

    return Container(
      width: width,
      height: height,
      margin: EdgeInsets.symmetric(horizontal: 100),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  width: width * 0.15,
                  height: height * 0.45,
                  child: Text(
                    "Masjid \nBaiturrahman, Ikon \nAceh yang \nJadi \nPerhatian \nDunia",
                    style: tsHeading2SemiBoldBlack,
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

                    SizedBox(height: 25),

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

          SizedBox(height: 50),

          Text(
            "         Banda Aceh – Masjid Raya Baiturrahman, Banda Aceh salah satu destinasi wisata religi favorit wisatawan di Kota Banda Aceh. Masjid bersejarah ini bukan hanya ikon Serambi Mekkah, tapi juga simbol perjuangan dan penyebaran Islam di Indonesia hingga semenjung Asia Tenggara.“Dengan latar belakang sejarah itu, wajar kalau keberadaan masjid ini mengundang banyak perhatian masyarakat dunia yang ingin mengetahui sejarah Aceh maupun perkembangan Islam di nusantara,” kata Gubernur Aceh, Zaini Abdullah.",
            style: tsHeading5MediumBlack,
          ),

          SizedBox(height: 10),

          Text(
            "         Masjid dibangun sejak abad 17 ini selama ini ramai dikunjungi wisatawan baik dalam maupun luar negeri. Terutama dari Malaysia. Bagi warga negeri Jiran yang berkunjung ke Aceh, mereka serasa wajib datang dulu ke Masjid Baiturrahman. “Ini tentu suatu kemuliaan bagi kita,” ujar Zaini.Dengan pembangunan lanskap, infrasruktur serta perluasan area masjid yang sudah dimulai dari kemarin, diharapkan akan semakin banyak wisatawan yang berkunjung ke Masjid Baiturrahman pada masa mendatang.",
            style: tsHeading5MediumBlack,
          )
        ],
      ),
    );
  }
}
