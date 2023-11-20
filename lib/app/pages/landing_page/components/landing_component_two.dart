import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_pancasila_aceh/common/helper/themes.dart';
import 'package:web_pancasila_aceh/common/mock_data/mock_tour_data.dart';
import 'package:web_pancasila_aceh/common/routes/app_pages.dart';

import '../../../../common/model/tour.dart';
import '../landing_page_controller.dart';

class LandingComponentTwo extends StatelessWidget {
  const LandingComponentTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size mediaQuery = MediaQuery.of(context).size;
    final double width = mediaQuery.width;
    final double height = mediaQuery.height;
    final controller = Get.put(LandingPageController());

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
              scrollDirection: Axis.horizontal,
              itemCount: mockTourData.length,
                itemBuilder: (context, index) {
                  Tour tour = mockTourData[index];
                  return MouseRegion(
                    cursor: SystemMouseCursors.click,
                      onEnter: (_) {
                        controller.setHoveredIndex(index);
                      },
                      onExit: (_) {
                        controller.setHoveredIndex(-1); // Reset hover index when exiting
                      },
                    child: Obx(() => Container
                      (
                      width: width * 0.2,
                      margin: const EdgeInsets.only(right: 25),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: controller.hoveredIndex == index ? primaryColor : Colors.white,
                      ),
                      child: Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              image: DecorationImage(
                                image: NetworkImage(tour.cardImage),
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
                              alignment: controller.hoveredIndex == index ? Alignment.bottomCenter : Alignment.bottomLeft,
                              child: controller.hoveredIndex == index ? Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(tour.name, style: tsHeading3BoldWhite,),

                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: actionColor,
                                      fixedSize: Size(150, 40),
                                    ),
                                      onPressed: () {
                                      Get.toNamed(Routes.DETAIL_WISATA_PAGE, arguments: tour);
                                      }, child: Text("Jelajahi", style: tsHeading3BoldWhite,)),
                                ],
                              ) :Text(tour.name, style: tsHeading3BoldWhite,),
                            ),
                          ),
                        ],
                      ),
                    ),)
                  );

                }
            ),
          )

        ],
      ),
    );
  }
}


