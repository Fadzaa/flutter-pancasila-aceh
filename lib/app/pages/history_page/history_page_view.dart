import 'package:flutter/material.dart';
import 'package:web_pancasila_aceh/app/global_component/hero_component.dart';
import 'package:web_pancasila_aceh/app/pages/history_page/components/history_component_two_desktop.dart';
import 'package:web_pancasila_aceh/common/base/abstract_responsive_state.dart';



class HistoryPageView extends ResponsiveScreenState {

  @override
  Widget build(BuildContext context) {
    return super.build(context);
  }

  @override
  Widget buildDesktopPage() {
    // TODO: implement buildDesktopPage
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              HeroComponent(imagePath: "assets/images/sejarah_landing.jpg", headingText: "Sejarah Provinsi Aceh", subHeadingText: "Aceh dari Zaman ke Zaman"),
              SizedBox(height: 50),
              HistoryComponentTwoDesktop(),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget buildMobilePage() {
    // TODO: implement buildMobilePage
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text("This is Mobile Page")
            ],
          ),
        ),
      ),
    );
  }

}
