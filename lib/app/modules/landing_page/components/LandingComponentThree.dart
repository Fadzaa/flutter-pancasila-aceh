import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:web_pancasila_aceh/app/modules/landing_page/widgets/staggered_grid_image_kuliner.dart';
import 'package:web_pancasila_aceh/helper/themes.dart';

Widget landingComponentThree({required BuildContext context}) {
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
        Text("Mau makan makanan Aceh?", style: tsSubHeading),
        Text("Galeri Kuliner Khas", style: tsKulinerHeading),
        SizedBox(height: 30),
        StaggeredGrid.count(
          crossAxisCount: 6,
          mainAxisSpacing: 15,
          crossAxisSpacing: 15,
          children: [
            staggeredGridImageKuliner(assetPath: 'assets/images/kuliner_sie_itik.jpg', crossAxisCellCount: 4, textValue: "Sie Itik"),
            staggeredGridImageKuliner(assetPath: 'assets/images/kuliner_sate_matang.jpg', crossAxisCellCount: 2, textValue: "Sate Matang"),
            staggeredGridImageKuliner(assetPath: 'assets/images/kuliner_mie_aceh.jpg', crossAxisCellCount: 3, textValue: "Mie Aceh"),
            staggeredGridImageKuliner(assetPath: 'assets/images/kuliner_ayam_tangkap.jpg', crossAxisCellCount: 3, textValue: "Ayam Tangkap"),
          ],
        ),
      ],
    ),
  );
}
