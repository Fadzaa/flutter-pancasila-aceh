import 'package:flutter/material.dart';
import 'package:web_pancasila_aceh/common/helper/themes.dart';
class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size mediaQuery = MediaQuery.of(context).size;
    final double width = mediaQuery.width;
    final double height = mediaQuery.height;
    return Container(
      width: width,
      height: 200,
      color: primaryColor,
      child:
      Column(
        children: [
          Text("Website Aceh", style: tsFooter(isHeading: true),),
          Text("Sejarah Aceh", style: tsFooter(isHeading: false),),
          Text("Ekonomi Aceh", style: tsFooter(isHeading: false),),
          Text("Kenali Aceh", style: tsFooter(isHeading: false),),

        ],
      ),
    );
  }
}
