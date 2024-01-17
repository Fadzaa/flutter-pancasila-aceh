import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:web_pancasila_aceh/app/pages/detail_page/detail_wisata_page/widgets/staggered_grid_tile_detail_wisata.dart';
import 'package:web_pancasila_aceh/common/base/abstract_responsive_state.dart';

import '../../../../../common/model/tour.dart';

class DetailWisataComponentOne extends ResponsiveScreenState {

  @override
  Widget build(BuildContext context) {
    return super.build(context);
  }

  @override
  Widget buildDesktopPage(context) {
    final Size mediaQuery = MediaQuery.of(context).size;
    final double width = mediaQuery.width;
    final double height = mediaQuery.height;
    Tour tour = Get.arguments;

    return Container(
      child: StaggeredGrid.count(
        crossAxisCount: 6,
        crossAxisSpacing: width * 0.02,
        mainAxisSpacing: width * 0.02,
        children: [
          staggeredGridTileDetailWisata(pathImage: tour.detailImages[0], isSmall: false),
          staggeredGridTileDetailWisata(pathImage: tour.detailImages[1], isSmall: true),
          staggeredGridTileDetailWisata(pathImage: tour.detailImages[2], isSmall: false),
          staggeredGridTileDetailWisata(pathImage: tour.detailImages[3], isSmall: true),
        ],
      ),
    );
  }

  @override
  Widget buildMobilePage(context) {
    final Size mediaQuery = MediaQuery.of(context).size;
    final double width = mediaQuery.width;
    final double height = mediaQuery.height;
    Tour tour = Get.arguments;

    return Container(
      child: StaggeredGrid.count(
        crossAxisCount: 4,
        crossAxisSpacing: width * 0.02,
        mainAxisSpacing: width * 0.02,
        children: [
          staggeredGridTileDetailWisata(pathImage: tour.detailImages[0], isSmall: false),
          staggeredGridTileDetailWisata(pathImage: tour.detailImages[1], isSmall: true),
          staggeredGridTileDetailWisata(pathImage: tour.detailImages[2], isSmall: false),
          staggeredGridTileDetailWisata(pathImage: tour.detailImages[3], isSmall: true),
        ],
      ),
    );
  }
}