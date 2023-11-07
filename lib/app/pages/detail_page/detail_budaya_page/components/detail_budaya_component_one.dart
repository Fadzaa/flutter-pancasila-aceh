import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:web_pancasila_aceh/app/pages/detail_page/detail_budaya_page/components/detail_budaya_staggred.dart';
import 'package:web_pancasila_aceh/app/pages/detail_page/detail_budaya_page/widget/staggered_grid_tile_detail_budaya.dart';
import 'package:web_pancasila_aceh/app/pages/detail_page/detail_wisata_page/widgets/staggered_grid_tile_detail_wisata.dart';
import 'package:web_pancasila_aceh/common/base/abstract_responsive_state.dart';
import 'package:web_pancasila_aceh/common/helper/themes.dart';

class DetailBudayaComponentOne extends ResponsiveScreenState {

  @override
  Widget build(BuildContext context) {
    return super.build(context);
  }

  @override
  Widget buildDesktopPage(context) {
    
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;

    return Container(
      margin: EdgeInsets.only(right: width * 0.1),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DetailBudayaComponentSteggred(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Tari Saman",
                style: tsHeading1BoldBlack,
              ),
              Container(
                width: width * 0.4,
                child: Text(
                  "Tari Saman, juga dikenal sebagai \"Saman Dance,\" adalah tarian tradisional khas Aceh yang memukau dengan gerakan tubuh, tangan, dan suara yang harmonis. Penari duduk dalam barisan, di mana seorang pemimpin atau \"imam\" memimpin gerakan, yang dimulai dengan gerakan tangan yang lambat namun semakin kompleks seiring berjalannya waktu. Tarian ini menggabungkan kecepatan tangan yang luar biasa dengan nyanyian yang menceritakan cerita atau pesan moral, dan seringkali memiliki pesan kebersamaan dan persatuan. Tari Saman adalah warisan budaya dan seni yang sangat berharga di Aceh dan dikenal di seluruh Indonesia serta di tingkat internasional.",
                  style: tsParagraph16MediumBlack.copyWith(height: 2.5),
                )
              )
            ],
          ),
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
      margin: EdgeInsets.only(top: height * 0.05,),
      child: Column(
        children: [
          Text(
            "Mau tau budayanya?",
            style: tsParagraph12MediumBlack,
          ),
          Text(
            "Tari Saman",
            style: tsHeading3BoldBlack,
          ),
          DetailBudayaComponentSteggred(),
          Container(
            margin: EdgeInsets.symmetric(horizontal: width * 0.1),
            child: Text.rich(
              TextSpan(
                children:[
                  TextSpan(
                    text: 'Banda Aceh',
                    style: tsParagraph12BoldBlack
                  ),
                  TextSpan(
                    text: ' – Masjid Raya Baiturrahman, Banda Aceh salah satu destinasi wisata religi favorit wisatawan di Kota Banda Aceh. Masjid bersejarah ini bukan hanya ikon Serambi Mekkah, tapi juga simbol perjuangan dan penyebaran Islam di Indonesia hingga semenjung Asia Tenggara.“Dengan latar belakang sejarah itu, wajar kalau keberadaan masjid ini mengundang banyak perhatian masyarakat dunia yang ingin mengetahui sejarah Aceh maupun perkembangan Islam di nusantara,” kata Gubernur Aceh, Zaini Abdullah.',
                    style: tsParagraph12MediumBlack 
                  ),
                ],
              ),
            )
          ),
          SizedBox(height: width * 0.2,)
        ],
      )
    );
  }
}