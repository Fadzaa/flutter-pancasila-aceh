import 'package:flutter/material.dart';
import 'package:web_pancasila_aceh/app/global_component/hero_component_detail.dart';
import 'package:web_pancasila_aceh/app/global_component/index.dart';
import 'package:web_pancasila_aceh/app/pages/detail_page/detail_kuliner_page/components/detail_kuliner_component_one.dart';
import 'package:web_pancasila_aceh/app/pages/detail_page/detail_kuliner_page/components/detail_kuliner_component_two.dart';

class DetailKulinerPageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size mediaQuery = MediaQuery.of(context).size;
    final double width = mediaQuery.width;
    final double height = mediaQuery.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              HeroComponentDetail(
                  imagePath: 'assets/images/kuliner_ayam_tangkap_hero.jpg',
                  headingText: 'KULINER PROVINSI ACEH'),
              DetailKulinerComponentOne(),
              DetailKulinerComponentTwo(),
              Footer(),
            ],
          ),
        ),
      ),
    );
  }
}
