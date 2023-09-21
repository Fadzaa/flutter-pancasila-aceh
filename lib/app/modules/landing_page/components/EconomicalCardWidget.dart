import 'package:flutter/material.dart';

Widget economicalCard({required professionName, required professionDescription}){
  return Container(
    width: 846,
    height: 687,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(
        Radius.circular(40)
      )
    ),
    child: Stack(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 38),
            Container(
              child: Image.asset(
              ),
            ),
            Text(
              professionName
            ),
            SizedBox(height: 44),
            Text(
              professionDescription
              
            )
          ],
        )
      ],
    ),
  );
}