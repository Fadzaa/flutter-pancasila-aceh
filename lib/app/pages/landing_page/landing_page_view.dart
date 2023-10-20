import 'package:flutter/material.dart';
import 'package:web_pancasila_aceh/app/global_component/index.dart';
import 'package:web_pancasila_aceh/app/pages/landing_page/components/index.dart';

class LandingPageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              // HeroComponent(
              //     imagePath: "assets/images/bg_hero_landing.png",
              //     headingText: "Provinsi Aceh",
              //     subHeadingText: "Pancacita, Lima Cita - Cita"),

              //Hero Component Desktop Mobile Done

              // LandingComponentTwo(), //Mobile Desktop Belum
              LandingComponentThree(), //Mobile Desktop Done
              LandingComponentFour(),
              // LandingComponentFive(),
              Footer()
            ],
          ),
        ),
      ),
    );
  }
}
