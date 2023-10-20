import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//COLOR
const Color primaryColor = Color(0xFF104A4B);
const Color actionColor = Color(0xFFC7F900);
const Color primaryTextColor = Color(0xFF141313);
const Color whiteTextColor = Color(0xFFF9FFFF);
const Color greyTextColor = Color(0xFF434242);

//FONT STYLES DESKTOP

TextStyle tsNavbarText = GoogleFonts.poppins(
    textStyle: const TextStyle(
        color: whiteTextColor, fontWeight: FontWeight.w600, fontSize: 14));

TextStyle tsDisplayBoldWhite = GoogleFonts.poppins(
    textStyle: const TextStyle(
        color: whiteTextColor, fontWeight: FontWeight.w700, fontSize: 56));

TextStyle tsHeading1BoldBlack = GoogleFonts.poppins(
    textStyle: const TextStyle(
        color: primaryTextColor, fontWeight: FontWeight.w700, fontSize: 40));

TextStyle tsHeading2SemiBoldWhite = GoogleFonts.poppins(
    textStyle: const TextStyle(
        color: whiteTextColor, fontWeight: FontWeight.w600, fontSize: 32));

TextStyle tsHeading2SemiBoldBlack = GoogleFonts.poppins(
    textStyle: const TextStyle(
        color: primaryTextColor, fontWeight: FontWeight.w600, fontSize: 32));

TextStyle tsHeading3MediumWhite = GoogleFonts.poppins(
    textStyle: const TextStyle(
        color: whiteTextColor, fontWeight: FontWeight.w500, fontSize: 24));

TextStyle tsHeading3BoldBlack = GoogleFonts.poppins(
    textStyle: const TextStyle(
        color: primaryTextColor, fontWeight: FontWeight.w700, fontSize: 24));

TextStyle tsHeading3MediumBlack = GoogleFonts.poppins(
    textStyle: const TextStyle(
        color: primaryTextColor, fontWeight: FontWeight.w500, fontSize: 24));

TextStyle tsHeading4BoldWhite = GoogleFonts.poppins(
    textStyle: const TextStyle(
        color: whiteTextColor, fontWeight: FontWeight.w700, fontSize: 20));

TextStyle tsHeading4BoldBlack = GoogleFonts.poppins(
    textStyle: const TextStyle(
        color: primaryTextColor, fontWeight: FontWeight.w700, fontSize: 20));

TextStyle tsHeading4MediumBlack = GoogleFonts.poppins(
    textStyle: const TextStyle(
        color: primaryTextColor, fontWeight: FontWeight.w500, fontSize: 20));

TextStyle tsHeading5BoldWhite = GoogleFonts.poppins(
    textStyle: const TextStyle(
        color: whiteTextColor, fontWeight: FontWeight.w700, fontSize: 16));

TextStyle tsHeading5MediumBlack = GoogleFonts.poppins(
    textStyle: const TextStyle(
        color: primaryTextColor, fontWeight: FontWeight.w500, fontSize: 16));

TextStyle tsHeadingMobile = GoogleFonts.poppins(
    textStyle: const TextStyle(
        color: primaryTextColor, fontWeight: FontWeight.w700, fontSize: 25));

TextStyle tsFooter({bool isHeading = false}) {
  return GoogleFonts.poppins(
      textStyle: TextStyle(
          color: whiteTextColor,
          fontWeight: isHeading ? FontWeight.w500 : FontWeight.normal,
          fontSize: isHeading ? 18 : 16));
}


//FONT STYLES MOBILE

TextStyle tsHeading2BoldWhite = GoogleFonts.poppins(
    textStyle: const TextStyle(
        color: whiteTextColor, fontWeight: FontWeight.w700, fontSize: 36));

TextStyle tsHeading3BoldWhite = GoogleFonts.poppins(
    textStyle: const TextStyle(
        color: whiteTextColor, fontWeight: FontWeight.w700, fontSize: 28));

TextStyle tsHeading4BoldGrey = GoogleFonts.poppins(
    textStyle: const TextStyle(
        color: greyTextColor, fontWeight: FontWeight.w700, fontSize: 24));

TextStyle tsParagraph18BoldWhite = GoogleFonts.poppins(
    textStyle: const TextStyle(
        color: whiteTextColor, fontWeight: FontWeight.w700, fontSize: 18));

TextStyle tsParagraph16SemiBoldWhite = GoogleFonts.poppins(
    textStyle: const TextStyle(
        color: whiteTextColor, fontWeight: FontWeight.w600, fontSize: 16));

TextStyle tsParagraph16MediumWhite = GoogleFonts.poppins(
    textStyle: const TextStyle(
        color: whiteTextColor, fontWeight: FontWeight.w500, fontSize: 16));

TextStyle tsParagraph16BoldBlack = GoogleFonts.poppins(
    textStyle: const TextStyle(
        color: primaryTextColor, fontWeight: FontWeight.w700, fontSize: 16));

TextStyle tsParagraph16MediumBlack = GoogleFonts.poppins(
    textStyle: const TextStyle(
        color: primaryTextColor, fontWeight: FontWeight.w500, fontSize: 16));

TextStyle tsParagraph16BoldGrey = GoogleFonts.poppins(
    textStyle: const TextStyle(
        color: greyTextColor, fontWeight: FontWeight.w700, fontSize: 16));

TextStyle tsParagraph12BoldWhite = GoogleFonts.poppins(
    textStyle: const TextStyle(
        color: whiteTextColor, fontWeight: FontWeight.w700, fontSize: 12));

TextStyle tsParagraph12SemiBoldWhite = GoogleFonts.poppins(
    textStyle: const TextStyle(
        color: whiteTextColor, fontWeight: FontWeight.w600, fontSize: 12));

TextStyle tsParagraph12MediumWhite = GoogleFonts.poppins(
    textStyle: const TextStyle(
        color: whiteTextColor, fontWeight: FontWeight.w500, fontSize: 12));

TextStyle tsParagraph12BoldBlack = GoogleFonts.poppins(
    textStyle: const TextStyle(
        color: primaryTextColor, fontWeight: FontWeight.w700, fontSize: 12));

TextStyle tsParagraph12MediumBlack = GoogleFonts.poppins(
    textStyle: const TextStyle(
        color: primaryTextColor, fontWeight: FontWeight.w500, fontSize: 12));

TextStyle tsParagraph12MediumGrey = GoogleFonts.poppins(
    textStyle: const TextStyle(
        color: greyTextColor, fontWeight: FontWeight.w500, fontSize: 12));

TextStyle tsParagraph10MediumBlack = GoogleFonts.poppins(
    textStyle: const TextStyle(
        color: greyTextColor, fontWeight: FontWeight.w500, fontSize: 10));


//IMAGE ASSETS
String iconCash = "assets/icon/icon_cash.svg";
