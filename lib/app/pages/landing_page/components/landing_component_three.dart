import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:web_pancasila_aceh/app/pages/landing_page/widgets/staggered_grid_tile_image_kuliner.dart';
import 'package:web_pancasila_aceh/common/base/abstract_responsive_state.dart';
import 'package:web_pancasila_aceh/common/helper/themes.dart';

class LandingComponentThree extends ResponsiveScreenState {
  LandingComponentThree({
    Key? key,
  });

  FoodGallery foodGallery = FoodGallery(backgrounds: [
    'assets/images/kuliner_sie_itik.jpg',
    'assets/images/kuliner_sate_matang.jpg',
    'assets/images/kuliner_mie_aceh.jpg',
    'assets/images/kuliner_ayam_tangkap.jpg',
  ], titles: [
    'Sie Itik',
    'Sate Matang',
    'Mie Aceh',
    'Ayam Tangkap',
  ]);

  @override
  Widget build(BuildContext context) {
    return super.build(context);
  }

  @override
  Widget buildDesktopPage(BuildContext context) {
    double widthMediaQuery = MediaQuery.of(context).size.width;
    return Container(
      width: widthMediaQuery,
      padding: EdgeInsets.all(70),
      decoration: BoxDecoration(
        color: Color(0xFFF9FEE6),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Mau makan makanan Aceh?", style: tsHeading3MediumBlack),
          Text("Galeri Kuliner Khas", style: tsHeading1BoldBlack),
          SizedBox(height: 30),
          StaggeredGrid.count(
            crossAxisCount: 6,
            mainAxisSpacing: 15,
            crossAxisSpacing: 15,
            children: [
              staggeredGridTileImageKuliner(
                  assetPath: 'assets/images/kuliner_sie_itik.jpg',
                  crossAxisCellCount: 4,
                  textValue: "Sie Itik"),
              staggeredGridTileImageKuliner(
                  assetPath: 'assets/images/kuliner_sate_matang.jpg',
                  crossAxisCellCount: 2,
                  textValue: "Sate Matang"),
              staggeredGridTileImageKuliner(
                  assetPath: 'assets/images/kuliner_mie_aceh.jpg',
                  crossAxisCellCount: 3,
                  textValue: "Mie Aceh"),
              staggeredGridTileImageKuliner(
                  assetPath: 'assets/images/kuliner_ayam_tangkap.jpg',
                  crossAxisCellCount: 3,
                  textValue: "Ayam Tangkap"),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget buildMobilePage(BuildContext context) {
    double widthMediaQuery = MediaQuery.of(context).size.width;
    // TODO: implement buildMobilePage
    return Container(
      width: widthMediaQuery,
      height: MediaQuery.of(context).size.height + 50,
      decoration: BoxDecoration(
        color: Color(0xFFF9FEE6),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Padding(
        padding: EdgeInsets.all(35),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Mau makan makanan Aceh?", style: tsParagraph12MediumBlack),
            Text("Galeri Makanan Aceh", style: tsHeadingMobile),
            Expanded(
              child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Stack(
                    children: [
                      Container(
                        height: 157,
                        margin: EdgeInsets.only(top: 15),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                                image:
                                    AssetImage(foodGallery.backgrounds[index]),
                                fit: BoxFit.fill)),
                      ),
                      Container(
                        height: 157,
                        width: widthMediaQuery,
                        margin: EdgeInsets.only(top: 15),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Colors.transparent,
                                Colors.black.withOpacity(0.7)
                              ],
                            )),
                        child: Padding(
                          padding: EdgeInsets.only(left: 15, bottom: 15),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(foodGallery.titles[index],
                                  style: tsParagraph16SemiBoldWhite),
                            ],
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

class FoodGallery {
  final List<String> backgrounds;
  final List<String> titles;

  FoodGallery({
    required this.backgrounds,
    required this.titles,
  });
}
