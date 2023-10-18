import 'package:flutter/material.dart';
import 'package:web_pancasila_aceh/app/global_component/index.dart';
import 'package:web_pancasila_aceh/common/base/abstract_responsive_state.dart';
import 'components/index.dart';

class RecognizePageView extends ResponsiveScreenState {
  @override
  Widget build(BuildContext context) {
    return super.build(context);
  }

  @override
  Widget buildDesktopPage(context) {
    // TODO: implement buildDesktopPage
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
                  subHeadingText: "Jelajahi Aceh Lebih Dalam"),
              // RecognizeComponentOne(),
              // RecognizeComponentTwo(),
              // RecognizeComponentThree(),
              RecognizeComponentFour(),

              // Footer()
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget buildMobilePage(context) {
    // TODO: implement buildMobilePage
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              HeroComponent(
                  imagePath: "assets/images/bg_hero_recognize.png",
                  headingText: "Kenali Provinsi Aceh",
                  subHeadingText: "Jelajahi Aceh Lebih Dalam"),
            ],
          ),
        ),
      ),
    );
  }
}
