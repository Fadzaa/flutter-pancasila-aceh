import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:web_pancasila_aceh/common/base/abstract_responsive_state.dart';

class staggeredGridTileDetailBudaya extends ResponsiveScreenState {
  staggeredGridTileDetailBudaya({
    Key? key,
    required this.pathImage,
    required this.isSmall,
  });

  final String pathImage;
  final bool isSmall;


  @override
  Widget build(BuildContext context) {
    return super.build(context);
  }

  @override
  Widget buildDesktopPage(context) {

    return StaggeredGridTile.count(
      crossAxisCellCount: isSmall ? 2 : 4,
      mainAxisCellCount: isSmall ? 2 : 3,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Image.asset('assets/images/$pathImage.jpg', fit: BoxFit.cover),
      ),
    );
  }

  @override
  Widget buildMobilePage(context) {

    return StaggeredGridTile.count(
      crossAxisCellCount: isSmall ? 1 : 2, 
      mainAxisCellCount: 1, 
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset(pathImage, fit: isSmall ? BoxFit.fitWidth : BoxFit.fitHeight),
      ),
    );
  }
}