import 'package:flutter/material.dart';
import 'package:web_pancasila_aceh/common/helper/themes.dart';

Widget economicCardMobile({
  required double width,
  required double height,
  required String professionName,
  required String professionDescription,
  required String professionImage
}){
  return Container(
    width: width,
    child: Stack(
      alignment: Alignment.topCenter,
      children: [
        Container(
          margin: EdgeInsets.only(top: height * 0.1),
          height: height,
          decoration: ShapeDecoration(
            color: Color(0xFFFAFFFF),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            shadows: [
              BoxShadow(
                color: Color(0x14000000),
                blurRadius: 111,
                offset: Offset(0, 4),
                spreadRadius: 25,
              )
            ],
          ),
        ),
        Container(
          width: width * 0.9,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: width * 0.55,
                    height: height * 0.6,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(28),
                      image: DecorationImage(
                        image: AssetImage(professionImage),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    width: width * 0.3,
                    child: Text(
                      professionName,
                      style: tsHeading4BoldBlack,
                    ),
                  )
                ],
              ),
              SizedBox(height: height * 0.1),
              Text(
                professionDescription,
                style: tsParagraph16MediumBlack,
              )
            ],
          ),
        )
      ],
    ),
  );
}