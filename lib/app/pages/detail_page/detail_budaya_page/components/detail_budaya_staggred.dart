import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:web_pancasila_aceh/app/pages/detail_page/detail_budaya_page/widget/staggered_grid_tile_detail_budaya.dart';
import 'package:web_pancasila_aceh/app/pages/detail_page/detail_wisata_page/widgets/staggered_grid_tile_detail_wisata.dart';
import 'package:web_pancasila_aceh/common/base/abstract_responsive_state.dart';
import 'package:web_pancasila_aceh/common/helper/themes.dart';

class DetailBudayaComponentSteggred extends ResponsiveScreenState {

  @override
  Widget build(BuildContext context) {
    return super.build(context);
  }

  @override
  Widget buildDesktopPage(context) {
    
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;

    return Container(
      margin: EdgeInsets.only(left: width * 0.1, bottom: height * 0.1),
      width: width * 0.3,
      child: StaggeredGrid.count(
        crossAxisCount: 4,
        crossAxisSpacing: width * 0.02,
        mainAxisSpacing: width * 0.02,
        children: [
          staggeredGridTileDetailBudaya(pathImage: 'budaya_aceh_1', isSmall: false),
          staggeredGridTileDetailBudaya(pathImage: 'budaya_aceh_1', isSmall: true),
          staggeredGridTileDetailBudaya(pathImage: 'budaya_aceh_1', isSmall: true),
        ],
      ),
    );
  }

  @override
  Widget buildMobilePage(context) {
    final Size mediaQuery = MediaQuery.of(context).size;
    final double width = mediaQuery.width;
    final double height = mediaQuery.height;

    return Container(
      margin: EdgeInsets.symmetric(horizontal: width * 0.1, vertical:  height * 0.05),
      child: StaggeredGrid.count(
        crossAxisCount: 2,
        crossAxisSpacing: width * 0.02,
        mainAxisSpacing: width * 0.02,
        children: [
          staggeredGridTileDetailBudaya(pathImage: 'budaya_aceh_1', isSmall: false),
          staggeredGridTileDetailBudaya(pathImage: 'budaya_aceh_1', isSmall: true),
          staggeredGridTileDetailBudaya(pathImage: 'budaya_aceh_1', isSmall: true),
        ],
      ),
    );
  }
}
