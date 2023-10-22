import 'package:flutter/material.dart';
import 'components/index.dart';
import 'package:web_pancasila_aceh/app/global_component/index.dart';

class HistoryPageView extends StatelessWidget {
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
              HeroComponent(
                  imagePath: "assets/images/sejarah_landing.jpg",
                  headingText: "Sejarah Provinsi Aceh",
                  subHeadingText: "Aceh dari Zaman ke Zaman"
              ),
              HistoryComponentOne(),
              HistoryComponentTwo(),
              Footer(),
            ],
          ),
        ),
      ),
    );
  }
}
