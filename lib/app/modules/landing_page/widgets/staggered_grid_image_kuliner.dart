import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

Widget staggeredGridImageKuliner({required String assetPath, required int crossAxisCellCount}) {
  return StaggeredGridTile.count(
    crossAxisCellCount: crossAxisCellCount,
    mainAxisCellCount: 1,
    child: ClipRRect(
      borderRadius: BorderRadius.circular(5),
      child: Image.asset(
        assetPath,
        fit: BoxFit.cover,
      ),
    ),
  );
}
