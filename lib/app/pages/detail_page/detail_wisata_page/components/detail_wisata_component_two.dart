import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_pancasila_aceh/common/base/abstract_responsive_state.dart';
import 'package:web_pancasila_aceh/common/helper/themes.dart';

import '../../../../../common/model/tour.dart';

class DetailWisataComponentTwo extends ResponsiveScreenState {
  @override
  Widget build(BuildContext context) {
    return super.build(context);
  }

  @override
  Widget buildDesktopPage(context) {
    Tour tour = Get.arguments;
    final Size mediaQuery = MediaQuery.of(context).size;
    final double width = mediaQuery.width;
    final double height = mediaQuery.height;

    return Container(
        margin: EdgeInsets.symmetric(horizontal: width * 0.1),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: height * 0.05),
            Text(tour.name, style: tsHeading1BoldBlack),
            SizedBox(height: height * 0.04),
            Container(
              height: height * 0.5,
              width: width * 0.9,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.network(
                    tour.cardImage,
                    fit: BoxFit.fitWidth),
              ),
            ),
            SizedBox(height: height * 0.1),
            Text(
              tour.description,
              style: tsParagraph16MediumBlack.copyWith(height: 2.25),
            ),
          ],
        )
    );
  }

  @override
  Widget buildMobilePage(context) {
    final Size mediaQuery = MediaQuery.of(context).size;
    final double width = mediaQuery.width;
    final double height = mediaQuery.height;
    Tour tour = Get.arguments;

    return Container(
        margin: EdgeInsets.symmetric(horizontal: width * 0.1),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: height * 0.05),
            Text('Aceh indah bukan?', style: tsParagraph12MediumGrey),
            Text(tour.name, style: tsHeading4BoldGrey),
            SizedBox(height: height * 0.04),
            Container(
              height: height * 0.2,
              width: width * 0.9,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.network(
                    tour.cardImage,
                    fit: BoxFit.fitWidth),
              ),
            ),
            SizedBox(height: height * 0.035),
            Text(
              tour.description,
              style: tsParagraph12MediumBlack,
            ),
          ],
        )
    );
  }
}
