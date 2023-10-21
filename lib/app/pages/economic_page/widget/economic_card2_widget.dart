import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:web_pancasila_aceh/common/helper/themes.dart';

class EconomicCardVertical extends StatelessWidget {
  const EconomicCardVertical({
    super.key,
    required this.professionImage,
    required this.professionName,
    required this.professionDescription
    });

    final String professionImage;
    final String professionName;
    final String professionDescription;

  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.sizeOf(context).width;
    double height = MediaQuery.sizeOf(context).height;

    return Container(
      width: width * 0.33,
      height: height * 0.88,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 255, 255, 255),
        borderRadius: BorderRadius.all(
            Radius.circular(28)
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            offset: Offset(0, 3),
            blurRadius: 6,
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            width: width * 0.4,
            height: width * 0.2,
            margin: EdgeInsets.only(top: 17, left: 16, right: 16),
            decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(28),
            image: DecorationImage(
              image: AssetImage(professionImage),
              fit: BoxFit.cover,
            ),
           ),
          ),
          SizedBox(height: 38),
          Text(
            professionName,
            style: tsHeading3BoldBlack
          ),
          SizedBox(height: 38),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 34),
            child: Text(
              professionDescription,
              style: tsHeading4MediumBlack,
              textAlign: TextAlign.center,
            ),
          )
        ],
      )
    );
  }
}