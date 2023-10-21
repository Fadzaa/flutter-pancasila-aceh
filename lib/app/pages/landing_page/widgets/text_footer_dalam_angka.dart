import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:web_pancasila_aceh/common/base/abstract_responsive_state.dart';
import 'package:web_pancasila_aceh/common/helper/themes.dart';

class TextFooterDalamAngka extends ResponsiveScreenState {
  TextFooterDalamAngka({
    Key? key,
    required this.textSubHeading,
    required this.textHeading,
  });

  final String textSubHeading;
  final String textHeading;

  @override
  Widget build(BuildContext context) {
    return super.build(context);
  }

  @override
  Widget buildDesktopPage(BuildContext context) {
    // TODO: implement buildDesktopPage
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
                fontSize: 20),
            maxLines: 2,
            group: AutoSizeGroup(),
          ),
          AutoSizeText(
            textHeading,
            style: const TextStyle(
                color: whiteTextColor,
                fontWeight: FontWeight.w600,
                fontSize: 44),
            maxLines: 1,
            group: AutoSizeGroup(),
          ),
        ],
      ),
    );
  }

  @override
  Widget buildMobilePage(BuildContext context) {
    // TODO: implement buildMobilePage
    return Container(
      width: MediaQuery.of(context).size.width * 0.33333333,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AutoSizeText(
            textSubHeading,
            style: tsParagraph12MediumWhite,
            maxLines: 2,
            group: AutoSizeGroup(),
          ),
          AutoSizeText(
            textHeading,
            style: tsHeadingMobileWhite,
            maxLines: 1,
            group: AutoSizeGroup(),
          ),
        ],
      ),
    );
  }
}
