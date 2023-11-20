import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:web_pancasila_aceh/common/base/abstract_responsive_state.dart';

class staggeredGridTileDetailWisata extends ResponsiveScreenState {
  staggeredGridTileDetailWisata({
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
    final Size mediaQuery = MediaQuery.of(context).size;

    return StaggeredGridTile.count(
      crossAxisCellCount: 2,
      mainAxisCellCount: isSmall ? 1 : 2,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Image.network(pathImage, fit: isSmall ? BoxFit.fitWidth : BoxFit.fitHeight),
      ),
    );
  }

  @override
  Widget buildMobilePage(context) {
    final Size mediaQuery = MediaQuery.of(context).size;
    final double width = mediaQuery.width;
    final double height = mediaQuery.height;

    return StaggeredGridTile.count(
      crossAxisCellCount: isSmall ? 2 : 1,
      mainAxisCellCount: isSmall ? 1 : 2,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset('assets/images/$pathImage.png', fit: isSmall ? BoxFit.fitWidth : BoxFit.fitHeight),
      ),
    );
  }
}