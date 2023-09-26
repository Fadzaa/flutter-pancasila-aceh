import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//COLOR
const Color primaryColor = Color(0xFF104A4B);
const Color actionColor = Color(0xFFC7F900);
const Color primaryTextColor = Color(0xFF141313);
const Color whiteTextColor = Color(0xFFF9FFFF);


//FONT STYLES INITIAL

TextStyle tsNavbarText = GoogleFonts.poppins(
    textStyle: const TextStyle(
        color: whiteTextColor,
        fontWeight: FontWeight.w700,
        fontSize: 10
    )
);

TextStyle tsHeadingLandingPage = GoogleFonts.poppins(
    textStyle: const TextStyle(
        color: whiteTextColor,
        fontWeight: FontWeight.w700,
        fontSize: 56
    )
);

TextStyle tsSubHeadingLandingPage = GoogleFonts.poppins(
    textStyle: const TextStyle(
        color: whiteTextColor,
        fontWeight: FontWeight.w500,
        fontSize: 24
    )
);

TextStyle tsSubHeading = GoogleFonts.poppins(
    textStyle: const  TextStyle(
        color: primaryTextColor,
        fontWeight: FontWeight.w500,
        fontSize: 24
    )
);

TextStyle tsHeading = GoogleFonts.poppins(
    textStyle: const TextStyle(
        color: primaryTextColor,
        fontWeight: FontWeight.w600,
        fontSize: 40
    )
);

TextStyle tsHeading4({required FontWeight fontWeight}) => GoogleFonts.poppins(
    textStyle: TextStyle(
        color: primaryTextColor,
        fontWeight: fontWeight,
        fontSize: 20
    )
);

TextStyle tsCardHe = GoogleFonts.poppins(
    textStyle: const TextStyle(
        color: primaryTextColor,
        fontWeight: FontWeight.w600,
        fontSize: 32
    )
);

TextStyle tsCardContent = GoogleFonts.poppins(
    textStyle: const TextStyle(
        color: primaryTextColor,
        fontWeight: FontWeight.w500,
        fontSize: 16
    )
);

TextStyle tsCardHeading = GoogleFonts.poppins(
    textStyle: const TextStyle(
        color: whiteTextColor,
        fontWeight: FontWeight.w600,
        fontSize: 20
    )
);

TextStyle tsFooter({required bool isHeading}) {
    return GoogleFonts.poppins(
        textStyle: TextStyle(
            color: whiteTextColor,
            fontWeight: isHeading ? FontWeight.w500 : FontWeight.normal,
            fontSize: isHeading? 18 : 16
        )
    );
}

//IMAGE ASSETS
String iconCash = "assets/icon/icon_cash.svg";