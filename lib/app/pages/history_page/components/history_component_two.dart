import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_pancasila_aceh/app/pages/history_page/widgets/card_history.dart';
import 'package:web_pancasila_aceh/common/base/abstract_responsive_state.dart';
import 'package:web_pancasila_aceh/common/helper/themes.dart';

class HistoryComponentTwo extends ResponsiveScreenState {
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
      margin: EdgeInsets.symmetric(horizontal: width * 0.08),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Aceh dari zaman ke zaman", style: tsHeading3MediumBlack, textAlign: TextAlign.center,),
          Text("Sejarah Singkat Aceh", style: tsHeading1BoldBlack, textAlign: TextAlign.center,),

          SizedBox(height: height * 0.1),
          
          CardHistory(textTitle: "Zaman Kuno", imagePath: "zaman_kuno.jpg", textDetail: "Aceh memiliki sejarah yang kaya dan panjang yang melibatkan berbagai kerajaan kuno, seperti Kerajaan Perlak dan Samudera Pasai, yang merupakan pusat perdagangan maritim pada abad ke-13 hingga ke-16.", isArrow: true),
          
          CardHistory(textTitle: "Zaman Kesultanan Aceh", imagePath: "kesultanan_aceh.jpg", textDetail: "Pada abad ke-16, Kesultanan Aceh menjadi salah satu kerajaan Islam terkuat di wilayah Nusantara, menguasai perdagangan rempah-rempah dan menjadi pusat Islam di Asia Tenggara.", isArrow: true),
          
          CardHistory(textTitle: "Pengaruh Kolonial Belanda", imagePath: "pengaruh_kolonial_belanda.jpg", textDetail: "Pada abad ke-17 hingga awal abad ke-20, Aceh berada dalam pengaruh kolonial Belanda. Terjadilah Perang Aceh yang berkepanjangan (1873-1904) antara Aceh dan Belanda yang mengakibatkan perubahan signifikan dalam sejarah dan budaya Aceh.", isArrow: true),

          CardHistory(textTitle: "Era Kemerdekaan Indonesia", imagePath: "kemerdekaan_indonesia.png", textDetail: "Setelah Indonesia merdeka pada tahun 1945, Aceh menjadi bagian dari negara Indonesia. Provinsi Aceh kemudian mengalami perang saudara dan konflik bersenjata antara Gerakan Aceh Merdeka (GAM) dan pemerintah Indonesia, yang berlangsung hingga perjanjian damai pada tahun 2005.", isArrow: true),

          CardHistory(textTitle: "Tsunami 2004", imagePath: "tsunami_2004.jpg", textDetail: "Aceh mendapat sorotan dunia pada tahun 2004 saat terjadi gempa bumi dan tsunami dahsyat yang menghancurkan sebagian besar provinsi ini. Bantuan internasional dan proyek rekonstruksi besar-besaran dilaksanakan untuk memulihkan Aceh.", isArrow: true),

          CardHistory(textTitle: "Era Pasca-Tsunami", imagePath: "pasca_tsunami.jpg", textDetail: "Pasca-tsunami, Aceh mengalami pertumbuhan ekonomi yang pesat dan perkembangan infrastruktur yang signifikan. Kesepakatan damai dengan GAM membantu menciptakan stabilitas di wilayah ini.", isArrow: true),

          CardHistory(textTitle: "Era Modern", imagePath: "modern.png", textDetail: " Aceh terus berkembang sebagai provinsi Indonesia yang memiliki peran penting dalam perekonomian nasional, terutama melalui sektor pertanian, perkebunan, perikanan, dan pariwisata. Provinsi ini juga dikenal sebagai satu-satunya provinsi di Indonesia yang menerapkan hukum syariah secara resmi.", isArrow: false),

          SizedBox(height: height * 0.1),

          Text(
            "Itulah gambaran singkat sejarah Aceh dari zaman kuno hingga masa modern. Aceh memiliki warisan budaya yang kuat dan peran penting dalam sejarah Indonesia.",
            style: tsHeading5MediumBlack,
          ),

          SizedBox(height: height * 0.3),

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
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Aceh dari zaman ke zaman", style: tsParagraph12MediumGrey, textAlign: TextAlign.center,),
          Text("Sejarah Singkat Aceh", style: tsHeading4BoldGrey, textAlign: TextAlign.center,),

          SizedBox(height: height * 0.05),

          CardHistory(textTitle: "Zaman Kuno", imagePath: "zaman_kuno.jpg", textDetail: "Aceh memiliki sejarah yang kaya dan panjang yang melibatkan berbagai kerajaan kuno, seperti Kerajaan Perlak dan Samudera Pasai, yang merupakan pusat perdagangan maritim pada abad ke-13 hingga ke-16.", isArrow: true),

          CardHistory(textTitle: "Zaman Kesultanan Aceh", imagePath: "kesultanan_aceh.jpg", textDetail: "Pada abad ke-16, Kesultanan Aceh menjadi salah satu kerajaan Islam terkuat di wilayah Nusantara, menguasai perdagangan rempah-rempah dan menjadi pusat Islam di Asia Tenggara.", isArrow: true),

          CardHistory(textTitle: "Pengaruh Kolonial Belanda", imagePath: "pengaruh_kolonial_belanda.jpg", textDetail: "Pada abad ke-17 hingga awal abad ke-20, Aceh berada dalam pengaruh kolonial Belanda. Terjadilah Perang Aceh yang berkepanjangan (1873-1904) antara Aceh dan Belanda yang mengakibatkan perubahan signifikan dalam sejarah dan budaya Aceh.", isArrow: true),

          CardHistory(textTitle: "Era Kemerdekaan Indonesia", imagePath: "kemerdekaan_indonesia.png", textDetail: "Setelah Indonesia merdeka pada tahun 1945, Aceh menjadi bagian dari negara Indonesia. Provinsi Aceh kemudian mengalami perang saudara dan konflik bersenjata antara Gerakan Aceh Merdeka (GAM) dan pemerintah Indonesia, yang berlangsung hingga perjanjian damai pada tahun 2005.", isArrow: true),

          CardHistory(textTitle: "Tsunami 2004", imagePath: "tsunami_2004.jpg", textDetail: "Aceh mendapat sorotan dunia pada tahun 2004 saat terjadi gempa bumi dan tsunami dahsyat yang menghancurkan sebagian besar provinsi ini. Bantuan internasional dan proyek rekonstruksi besar-besaran dilaksanakan untuk memulihkan Aceh.", isArrow: true),

          CardHistory(textTitle: "Era Pasca-Tsunami", imagePath: "pasca_tsunami.jpg", textDetail: "Pasca-tsunami, Aceh mengalami pertumbuhan ekonomi yang pesat dan perkembangan infrastruktur yang signifikan. Kesepakatan damai dengan GAM membantu menciptakan stabilitas di wilayah ini.", isArrow: true),

          CardHistory(textTitle: "Era Modern", imagePath: "modern.png", textDetail: " Aceh terus berkembang sebagai provinsi Indonesia yang memiliki peran penting dalam perekonomian nasional, terutama melalui sektor pertanian, perkebunan, perikanan, dan pariwisata. Provinsi ini juga dikenal sebagai satu-satunya provinsi di Indonesia yang menerapkan hukum syariah secara resmi.", isArrow: false),

          SizedBox(height: height * 0.15),
        ],
      ),
    );
  }
}
