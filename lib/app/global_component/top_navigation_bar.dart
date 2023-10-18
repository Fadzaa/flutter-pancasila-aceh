import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_pancasila_aceh/common/base/abstract_responsive_state.dart';
import 'package:web_pancasila_aceh/common/helper/themes.dart';
import 'package:web_pancasila_aceh/common/routes/app_pages.dart';

import 'navigation_text.dart';

class TopNavigationBar extends ResponsiveScreenState {
  TopNavigationBar({Key? key});
  @override
  Widget build(BuildContext context) {
    final Size mediaQuery = MediaQuery.of(context).size;
    final double height = mediaQuery.height;
    return Container(
      margin: EdgeInsets.fromLTRB(50, 30, 50, 0),
      padding: EdgeInsets.symmetric(horizontal: 75),
      height: height * 0.085,
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.circular(72)
      ),
      child:
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
            onTap: () => Get.toNamed(Routes.LANDING_PAGE),
            child: Row(
              children: [

                Image.asset("assets/images/logo_aceh.jpg", width: 120, height: 83,),

                Text("Website Aceh", style: tsNavbarText,),
              ],
            ),
          ),

          Row(

            children: [
              navigationText(routePath: Routes.HISTORY_PAGE, navText: "Sejarah Aceh", textStyle: tsNavbarText),

              SizedBox(width: 30,),

              navigationText(routePath: Routes.ECONOMIC_PAGE, navText: "Ekonomi Aceh", textStyle: tsNavbarText),

              SizedBox(width: 30,),

              navigationText(routePath: Routes.RECOGNIZE_PAGE, navText: "Kenali Aceh", textStyle: tsNavbarText),
            ],
          ),
        ],
      ),
    );
  }
  
  @override
  Widget buildDesktopPage(BuildContext context) {
    // TODO: implement buildDesktopPage
    throw UnimplementedError();
  }
  
  @override
  Widget buildMobilePage(BuildContext context) {
    // TODO: implement buildMobilePage
    throw UnimplementedError();
  }
}
