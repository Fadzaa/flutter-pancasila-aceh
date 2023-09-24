import 'package:flutter/material.dart';
import 'package:web_pancasila_aceh/helper/themes.dart';


class TopNavigationBar extends StatelessWidget {
  const TopNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size mediaQuery = MediaQuery.of(context).size;
    final double width = mediaQuery.width;
    final double height = mediaQuery.height;
    return Container(
      width: width * 0.8,
      height: height * 0.1,
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.circular(72)
      ),
      child:
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/images/logo_aceh.jpg", width: 95, height: 63,),
          Text("Website Aceh", style: tsNavbarText,),

          Row(
            children: [
              Text("Sejarah Aceh", style: tsNavbarText,),
              Text("Ekonomi Aceh", style: tsNavbarText,),
              Text("Kenali Aceh", style: tsNavbarText,),
            ],
          ),
        ],
      ),
    );
  }
}
