import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:web_pancasila_aceh/helper/themes.dart';

Widget staggeredGridImageKuliner({required String assetPath, required int crossAxisCellCount, required String textValue}) {
  return StaggeredGridTile.count(
    crossAxisCellCount: crossAxisCellCount,
    mainAxisCellCount: 1,
    child: Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(assetPath),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(5),
          ),
        ),

        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.center,
              colors: [
                Colors.black,
                Colors.black.withOpacity(0),
              ],
            ),
            borderRadius: BorderRadius.circular(5),
          ),
        ),

        Align(
          alignment: Alignment.bottomLeft,
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              textValue,
              style: tsCardHeading,
            ),
          ),
        ),
      ],
    ),


    // child: ClipRRect(
    //   borderRadius: BorderRadius.circular(5),
    //   child: Image.asset(
    //     assetPath,
    //     fit: BoxFit.cover,
    //   ),
    // ),
  );
}
