import 'package:flutter/material.dart';
import 'package:web_pancasila_aceh/common/base/abstract_responsive_state.dart';
import 'package:web_pancasila_aceh/common/helper/themes.dart';

class textBulletList extends ResponsiveScreenState {
  textBulletList({
    Key? key,
    required this.textValue,
  });

  final String textValue;

  @override
  Widget build(BuildContext context) {
    return super.build(context);
  }

  @override
  Widget buildDesktopPage(context) {
    final Size mediaQuery = MediaQuery.of(context).size;
    final double width = mediaQuery.width;
    final double height = mediaQuery.height;

    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('\u2022', style: tsHeading5RegularBlack),
        SizedBox(width: width * 0.0075),
        Expanded(child: Text(textValue, style: tsHeading5RegularBlack)),
      ],
    );
  }

  @override
  Widget buildMobilePage(context) {
    final Size mediaQuery = MediaQuery.of(context).size;
    final double width = mediaQuery.width;
    final double height = mediaQuery.height;

    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('\u2022', style: tsParagraph12RegularBlack),
        SizedBox(width: width * 0.0075),
        Expanded(child: Text(textValue, style: tsParagraph12RegularBlack)),
      ],
    );
  }
}
