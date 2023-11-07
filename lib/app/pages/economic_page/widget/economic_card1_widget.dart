import 'package:flutter/material.dart';
import 'package:web_pancasila_aceh/common/helper/themes.dart';


class EconomicCardHorizontal extends StatelessWidget {
  const EconomicCardHorizontal({
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
      margin: EdgeInsets.symmetric(horizontal: width * 0.15),
      width: width,
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
            width: width,
            height: height * 0.55,
            margin: EdgeInsets.only(top: 32, left: 43, right: 43),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(28),
              image: DecorationImage(
                image: AssetImage(professionImage),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 28),
          Text(
            professionName,
            style: tsHeading2SemiBoldBlack,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 28),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 94),
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