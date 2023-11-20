import 'package:flutter/material.dart';
import 'package:web_pancasila_aceh/common/helper/themes.dart';

import '../../../../common/model/tour.dart';

class LandingComponentTwo extends StatelessWidget {
  const LandingComponentTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size mediaQuery = MediaQuery.of(context).size;
    final double width = mediaQuery.width;
    final double height = mediaQuery.height;

    Widget circleButton({required bool isActive}) {
      return Container(
        width: 40,
        height: 40,
        decoration: isActive
            ? const BoxDecoration(
            color: primaryColor,
            shape: BoxShape.circle
        )
            : BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            border: Border.all(color: primaryColor)
        ),
        child: Icon(Icons.arrow_back_ios_rounded, color: isActive ? primaryColor : Colors.white,),
      );
    }

    return Container(
      width: width,

      padding: EdgeInsets.only(bottom: height * 0.15),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.085),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Apa yang menarik dari Aceh?", style: tsHeading3MediumBlack,),

                    Text("Destinasi Wisata Favorit?", style: tsHeading1BoldBlack,),
                  ],
                ),
                Row(
                  children: [
                    circleButton(isActive: false),
                    circleButton(isActive: true)
                  ],
                ),
              ],
            ),
          ),

          SizedBox(height: height * 0.05,),

          SizedBox(
            height: height * 0.5,
            child: ListView.builder(
              padding: EdgeInsets.only(left: width * 0.085),
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: 4,
                itemBuilder: (context, index) {
                  return Container(
                    width: width * 0.2,
                    margin: const EdgeInsets.only(right: 25),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            image: const DecorationImage(
                              image: AssetImage("assets/images/wisata_museum_tsunami_aceh.jpeg"),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 45),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            gradient: LinearGradient(
                              colors: [
                                Colors.black.withOpacity(0),
                                Colors.black.withOpacity(1),
                              ],
                              begin: const Alignment(0, 0.4),
                              end: Alignment.bottomCenter,
                            ),
                          ),
                          width: double.infinity,
                          height: double.infinity,
                          child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Text("Danau Laut Tawar", style: tsHeading3BoldWhite,),
                          ),
                        ),
                      ],
                    ),
                  );

                }
            ),
          )

        ],
      ),
    );
  }
}


