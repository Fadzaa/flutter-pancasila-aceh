import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_pancasila_aceh/app/global_component/top_navigation_bar_controller.dart';
import 'package:web_pancasila_aceh/common/base/abstract_responsive_state.dart';
import 'package:web_pancasila_aceh/common/helper/themes.dart';
import 'package:web_pancasila_aceh/common/routes/app_pages.dart';

import 'navigation_text.dart';

class TopNavigationBar extends ResponsiveScreenState {
  final TopNavigationBarController controller =
      Get.put(TopNavigationBarController());

  TopNavigationBar({Key? key});
  @override
  Widget build(BuildContext context) {
    return super.build(context);
  }

  @override
  Widget buildDesktopPage(BuildContext context) {
    final Size mediaQuery = MediaQuery.of(context).size;
    final double height = mediaQuery.height;
    return Container(
      margin: EdgeInsets.fromLTRB(50, 30, 50, 0),
      padding: EdgeInsets.symmetric(horizontal: 75),
      height: height * 0.085,
      decoration: BoxDecoration(
          color: primaryColor, borderRadius: BorderRadius.circular(72)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
            onTap: () => Get.toNamed(Routes.LANDING_PAGE),
            child: Row(
              children: [
                Image.asset(
                  "assets/images/logo_aceh.jpg",
                  width: 120,
                  height: 83,
                ),
                Text(
                  "Website Aceh",
                  style: tsNavbarText,
                ),
              ],
            ),
          ),
          Row(
            children: [
              navigationText(
                  routePath: Routes.HISTORY_PAGE,
                  navText: "Sejarah Aceh",
                  textStyle: tsNavbarText),
              SizedBox(
                width: 30,
              ),
              navigationText(
                  routePath: Routes.ECONOMIC_PAGE,
                  navText: "Ekonomi Aceh",
                  textStyle: tsNavbarText),
              SizedBox(
                width: 30,
              ),
              navigationText(
                  routePath: Routes.RECOGNIZE_PAGE,
                  navText: "Kenali Aceh",
                  textStyle: tsNavbarText),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget buildMobilePage(BuildContext context) {
    final Size mediaQuery = MediaQuery.of(context).size;
    final double width = mediaQuery.width;
    final double height = mediaQuery.height;

    return Obx(() => controller.isSelectedMenu.value
        ? Container(
            width: width,
            height: height,
            color: primaryColor,
            padding: EdgeInsets.symmetric(
                horizontal: width * 0.1, vertical: height * 0.1),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () {
                    controller.isSelectedMenu.value = !controller.isSelectedMenu.value;
                  },
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Icon(
                      Icons.close,
                      color: Colors.white,
                      size: 24,
                    ),
                  ),
                ),
                SizedBox(height: height * 0.05),
                InkWell(
                  onTap: () {
                    controller.isSelectedMenu.value = !controller.isSelectedMenu.value;
                    Get.toNamed(Routes.LANDING_PAGE);
                  },
                  child: Text(
                    "Home",
                    style: tsNavbarText,
                  ),
                ),
                SizedBox(height: height * 0.01),
                InkWell(
                  onTap: () {
                    controller.isSelectedMenu.value = !controller.isSelectedMenu.value;
                    Get.toNamed(Routes.HISTORY_PAGE);
                  },
                  child: Text(
                    "Sejarah Aceh",
                    style: tsNavbarText,
                  ),
                ),
                SizedBox(height: height * 0.01),
                InkWell(
                  onTap: () {
                    controller.isSelectedMenu.value = !controller.isSelectedMenu.value;
                    Get.toNamed(Routes.ECONOMIC_PAGE);
                  },
                  child: Text(
                    "Ekonomi Aceh",
                    style: tsNavbarText,
                  ),
                ),
                SizedBox(height: height * 0.01),
                InkWell(
                  onTap: () {
                    controller.isSelectedMenu.value = !controller.isSelectedMenu.value;
                    Get.toNamed(Routes.RECOGNIZE_PAGE);
                  },
                  child: Text(
                    "Kenali Aceh",
                    style: tsNavbarText,
                  ),
                ),
              ],
            ))
        : Container(
            margin: EdgeInsets.fromLTRB(18, 30, 18, 0),
            padding: EdgeInsets.only(left: 5, right: 25),
            height: height * 0.07,
            decoration: BoxDecoration(
                color: primaryColor, borderRadius: BorderRadius.circular(72)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () => Get.toNamed(Routes.LANDING_PAGE),
                  child: Image.asset(
                    "assets/images/logo_aceh.jpg",
                    width: 120,
                    height: 83,
                  ),
                ),
                InkWell(
                  onTap: () {
                    controller.isSelectedMenu.value = !controller.isSelectedMenu.value;
                  },
                  child: Icon(
                    Icons.menu,
                    color: Colors.white,
                    size: 30,
                  ),
                )
              ],
            ),
          ));
  }
}
