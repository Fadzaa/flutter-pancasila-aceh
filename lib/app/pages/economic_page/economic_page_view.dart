import 'package:flutter/material.dart';
import 'package:web_pancasila_aceh/app/global_component/footer.dart';
import 'package:web_pancasila_aceh/app/global_component/hero_component.dart';
import 'package:web_pancasila_aceh/app/pages/economic_page/components/economic_component_one.dart';
import 'package:web_pancasila_aceh/app/pages/economic_page/components/economic_component_three.dart';
import 'package:web_pancasila_aceh/app/pages/economic_page/components/economic_component_two.dart';

import 'package:web_pancasila_aceh/common/base/abstract_responsive_state.dart';





class EconomicPageView extends ResponsiveScreenState {

  @override
  Widget build(BuildContext context) {
    return super.build(context);
  }

  //
  @override
  Widget buildDesktopPage(context) {
    // TODO: implement buildDesktopPage
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              HeroComponent(
                imagePath: "assets/images/icon_aceh_4.jpg", 
                headingText: "PEREKONOMIAN ACEH", 
                subHeadingText: "Aceh dengan perekonomiannya"
              ),
              EconomicComponentOne(),
              SizedBox(height: 100),
              EconomicComponentTwo(),
              SizedBox(height: 90),
              EconomicComponentThree(),
              SizedBox(height: 211),
              Footer()
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget buildMobilePage(context) {

    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;

    // TODO: implement buildMobilePage
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              HeroComponent(
                imagePath: "assets/images/icon_aceh_4.jpg", 
                headingText: "PEREKONOMIAN ACEH", 
                subHeadingText: "Aceh dengan perekonomiannya"
              ),
              EconomicComponentOne(),
              SizedBox(height: height * 0.1),
              EconomicComponentTwo(),
              SizedBox(height: height * 0.1),
              EconomicComponentThree(),
              SizedBox(height: height * 0.1),
              Footer()
            ],
          ),
        ),
      ),
    );
  }
}
