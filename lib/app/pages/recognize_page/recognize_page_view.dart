import 'package:flutter/material.dart';
import 'package:web_pancasila_aceh/app/global_component/index.dart';
import 'components/index.dart';

class RecognizePageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              HeroComponent(
                  imagePath: "assets/images/bg_hero_recognize.png",
                  headingText: "Kenali Provinsi Aceh",
                  subHeadingText: "Jelajahi Aceh Lebih Dalam"), // Mobile Desktop Done

              // RecognizeComponentOne(), // Mobile Desktop Done
              //
              // RecognizeComponentTwo(), // Mobile Desktop Done
              //
              // RecognizeComponentThree(), //Component Three not complete at all

              RecognizeComponentFour(), //Mobile Desktop Done

              Footer()
            ],
          ),
        ),
      ),
    );
  }
}
