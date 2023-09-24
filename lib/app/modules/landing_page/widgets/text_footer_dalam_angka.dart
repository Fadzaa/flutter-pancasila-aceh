import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:web_pancasila_aceh/helper/themes.dart';

Widget textFooterDalamAngka ({required String textSubHeading, required String textHeading, required BuildContext context}) {
  return Container(
    width: MediaQuery.of(context).size.width * 0.33333333,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AutoSizeText(
          textSubHeading,
          style: const TextStyle(
              color: whiteTextColor,
              fontWeight: FontWeight.w600,
              fontSize: 20
          ),
          maxLines: 2,
          group: AutoSizeGroup(),
        ),
        AutoSizeText(
          textHeading,
          style: const TextStyle(
              color: whiteTextColor,
              fontWeight: FontWeight.w600,
              fontSize: 44
          ),
          maxLines: 1,
          group: AutoSizeGroup(),
        ),
      ],
    ),
  );
}