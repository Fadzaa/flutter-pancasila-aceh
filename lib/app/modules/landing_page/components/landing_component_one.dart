import 'package:flutter/material.dart';
import 'package:web_pancasila_aceh/app/modules/landing_page/components/top_navigation_bar.dart';
import 'package:web_pancasila_aceh/helper/themes.dart';

Widget landingComponentOne({required BuildContext context}) {
  final Size mediaQuery = MediaQuery.of(context).size;
  final double width = mediaQuery.width;
  final double height = mediaQuery.height;

  return Stack(
    children: [
      Container(
        width: width,
        height: height,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/background_landing.png", ),
                fit: BoxFit.fitWidth
            )
        ),
      ),

      Container(
        width: width,
        height: height,
        decoration:  BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.center,
                colors: [
                  Colors.black38,
                  Colors.black38.withOpacity(0)
                ]
            )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Pancacita, Lima Cita - Cita", style: tsSubHeadingLandingPage),
            Text("Provinsi Aceh".toUpperCase(), style: tsHeadingLandingPage),

          ],
        ),
      ),

     const Center(child: TopNavigationBar())
    ]
  );
}