import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:web_pancasila_aceh/common/helper/themes.dart';

Widget staggeredGridTileImageKuliner({required String assetPath, required int crossAxisCellCount, required String textValue, required VoidCallback onTap}) {
  return StaggeredGridTile.count(
    crossAxisCellCount: crossAxisCellCount,
    mainAxisCellCount: 1,
    child: InkWell(
      onTap: onTap,
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: CachedNetworkImageProvider(assetPath),
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
                style: const TextStyle(
                    color: whiteTextColor,
                    fontWeight: FontWeight.w700,
                    fontSize: 20
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
