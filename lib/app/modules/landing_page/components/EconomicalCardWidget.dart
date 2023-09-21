import 'dart:js';

import 'package:flutter/material.dart';
import 'package:web_pancasila_aceh/helper/themes.dart';

Widget economicalCard({required professionName, required professionDescription, required context}){
  return Container(
    width: MediaQuery.sizeOf(context).width * 0.4,
    height: MediaQuery.sizeOf(context).height * 0.62,
    decoration: BoxDecoration(
      color: Colors.black,
      borderRadius: BorderRadius.all(
        Radius.circular(28)
      ),
    ),
    child: Stack(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            Center(
              child: Container(
                width: MediaQuery.sizeOf(context).width * 0.4,
                height: MediaQuery.sizeOf(context).height * 0.25,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(28),
                  image: DecorationImage(
                    image: AssetImage('assets/images/perekonomian_pariwisata.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            SizedBox(height: 31),
            Text(
              professionName,
              style: tsCardHe,
              textAlign: TextAlign.start,
            ),
            SizedBox(height: 44),
            Text(
              professionDescription,
              style: tsCardContent,
            )
          ],
        )
      ],
    ),
  );
}