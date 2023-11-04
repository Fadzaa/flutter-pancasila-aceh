import 'package:flutter/material.dart';
import 'package:web_pancasila_aceh/app/global_component/hero_component_detail.dart';
import 'package:web_pancasila_aceh/app/global_component/index.dart';

class DetailWisataPageView extends StatelessWidget {
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
                  imagePath: 'assets/images/detail_wisata_hero.png',
                  headingText: 'WISATA PROVINSI ACEH'
              ),
              Container(
                height: height,
                color: Colors.grey,
              )
            ],
          ),
        ),
      ),
    );
  }
}
