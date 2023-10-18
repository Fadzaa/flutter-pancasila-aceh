import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_pancasila_aceh/app/global_component/navigation_text.dart';
import 'package:web_pancasila_aceh/common/helper/themes.dart';
import 'package:web_pancasila_aceh/common/routes/app_pages.dart';

import '../../common/base/abstract_responsive_state.dart';

class Footer extends ResponsiveScreenState {
  Footer({Key? key});

  @override
  Widget build(BuildContext context) {
    return super.build(context);
  }

  @override
  Widget buildDesktopPage(BuildContext context) {
    // TODO: implement buildDesktopPage
    final Size mediaQuery = MediaQuery.of(context).size;
    final double width = mediaQuery.width;
    final double height = mediaQuery.height;
    return Container(
      padding: EdgeInsets.fromLTRB(88, 35, 88, 35),
      width: width,
      height: 250,
      color: primaryColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Divider(
            height: 1,
            color: Colors.white,
            thickness: 2,
          ),
          SizedBox(
            height: 50,
          ),
          Expanded(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  navigationText(
                      routePath: Routes.LANDING_PAGE,
                      navText: "Website Aceh",
                      textStyle: tsFooter(isHeading: true)),
                  navigationText(
                      routePath: Routes.HISTORY_PAGE,
                      navText: "Sejarah Aceh",
                      textStyle: tsFooter()),
                  navigationText(
                      routePath: Routes.ECONOMIC_PAGE,
                      navText: "Ekonomi Aceh",
                      textStyle: tsFooter()),
                  navigationText(
                      routePath: Routes.RECOGNIZE_PAGE,
                      navText: "Kenali Aceh",
                      textStyle: tsFooter()),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget buildMobilePage(BuildContext context) {
    // TODO: implement buildMobilePage
    final Size mediaQuery = MediaQuery.of(context).size;
    final double width = mediaQuery.width;
    final double height = mediaQuery.height;
    return Container(
      padding: EdgeInsets.all(35),
      width: width,
      height: 250,
      color: primaryColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Divider(
            height: 1,
            color: Colors.white,
            thickness: 2,
          ),
          SizedBox(
            height: 50,
          ),
          Expanded(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  navigationText(
                      routePath: Routes.LANDING_PAGE,
                      navText: "Website Aceh",
                      textStyle: tsFooter(isHeading: true)),
                  navigationText(
                      routePath: Routes.HISTORY_PAGE,
                      navText: "Sejarah Aceh",
                      textStyle: tsFooter()),
                  navigationText(
                      routePath: Routes.ECONOMIC_PAGE,
                      navText: "Ekonomi Aceh",
                      textStyle: tsFooter()),
                  navigationText(
                      routePath: Routes.RECOGNIZE_PAGE,
                      navText: "Kenali Aceh",
                      textStyle: tsFooter()),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
