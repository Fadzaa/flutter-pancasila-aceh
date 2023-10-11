import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:web_pancasila_aceh/common/helper/themes.dart';


Widget economicalCard({required professionName, required professionDescription, required professionImage, required context}){
  return Container(
    width: MediaQuery.sizeOf(context).width * 0.4,
    height: MediaQuery.sizeOf(context).width * 0.33,
    decoration: BoxDecoration(
      color: Color.fromARGB(255, 255, 255, 255),
      borderRadius: BorderRadius.all(
        Radius.circular(28)
      ),
    ),
    child: Stack(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Center Profession Image
            Center(
              child: Container(
                width: MediaQuery.sizeOf(context).width * 0.4,
                height: MediaQuery.sizeOf(context).width * 0.18,
                margin: EdgeInsets.only(top: 17, left: 16, right: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(28),
                  image: DecorationImage(
                    image: AssetImage(professionImage),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            SizedBox(height: 16),
            //Container Profession Name
            Container(
              margin: EdgeInsets.symmetric(horizontal: 36),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    professionName,
                    style: tsHeading2SemiBoldBlack,
                  ),
                  SvgPicture.asset(
                    'assets/icon/icon_cash.svg',
                    width: 29,
                  )
                ],
              )
            ),
            SizedBox(height: 26),
            //Container Profession Description
            Container(
              margin: EdgeInsets.symmetric(horizontal: 36),
              child: Text(
                professionDescription,
                style: tsHeading4MediumBlack,
              ),
            ),
            SizedBox(height: 26)
          ],
        )
      ],
    ),
  );
}