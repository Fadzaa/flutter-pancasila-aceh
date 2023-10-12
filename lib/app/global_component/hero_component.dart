import 'package:flutter/material.dart';

import 'package:web_pancasila_aceh/common/helper/themes.dart';

import 'index.dart';

class HeroComponent extends StatelessWidget {
  const HeroComponent({
    super.key,
    required this.imagePath,
    required this.headingText,
    required this.subHeadingText
  });

  final String imagePath;
  final String headingText;
  final String subHeadingText;


  @override
  Widget build(BuildContext context) {
    final Size mediaQuery = MediaQuery.of(context).size;
    final double width = mediaQuery.width;
    final double height = mediaQuery.height;

    return Stack(
        children: [
          //Image
          Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(imagePath),
                    fit: width < 1175 ? BoxFit.fitHeight : BoxFit.fitWidth,

                )
            ),
          ),

          //Gradient & Content
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
            child: Padding(
              padding: EdgeInsets.only(left: width * 0.057, bottom: height * 0.12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(subHeadingText, style: tsHeading3MediumWhite),
                  Text(headingText.toUpperCase(), style: tsDisplayBoldWhite),

                ],
              ),
            ),
          ),

          //Navbar
          const Center(child: TopNavigationBar())
        ]
    );
  }
}
