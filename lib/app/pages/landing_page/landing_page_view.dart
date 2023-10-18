import 'package:flutter/material.dart';
import 'package:web_pancasila_aceh/app/global_component/index.dart';
import 'package:web_pancasila_aceh/common/base/abstract_responsive_state.dart';

class LandingPageView extends ResponsiveScreenState {

  @override
  Widget build(BuildContext context) {
    return super.build(context);
  }

  @override
  Widget buildDesktopPage(context) {
    // TODO: implement buildDesktopPage
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: Container(
        width: double.infinity,
        child: const SingleChildScrollView(
          child: Column(
            children: [
              Footer()
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
              Text("This is Mobile Page"),
            
            ],
          ),
        ),
      ),
    );
  }

}
