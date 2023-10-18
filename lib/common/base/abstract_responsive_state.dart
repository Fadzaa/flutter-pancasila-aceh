import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_pancasila_aceh/common/base/app_constants.dart';

abstract class ResponsiveScreenState<T extends GetxController> extends GetView {
  @override
  Widget build(BuildContext context) {
    return Builder(
        builder: (BuildContext context) {
          if (MediaQuery.of(context).size.width > AppConstants.MOBILE_PAGE_SIZE_THRESHOLD) {
            return buildDesktopPage(context);
          } else {
            return buildMobilePage(context);
          }
        }
    );
  }

  Widget buildDesktopPage(BuildContext context);

  Widget buildMobilePage(BuildContext context);
}