import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:web_pancasila_aceh/common/helper/themes.dart';

class EconomicalCard extends StatelessWidget {
  const EconomicalCard({
    super.key,
    required this.professionName,
    required this.professionDescription,
    required this.professionImage
  });

  final String professionName;
  final String professionDescription;
  final String professionImage;


  @override
  Widget build(BuildContext context) {

     double width = MediaQuery.sizeOf(context).width;
    double height = MediaQuery.sizeOf(context).height;

    return Container(
      width: width * 0.5,
      height: height * 0.8,
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
      child: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: width * 0.5,
                height: height * 0.45,
                margin: EdgeInsets.only(top: 17, left: 16, right: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(28),
                  image: DecorationImage(
                    image: AssetImage(professionImage),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 16),
              //Container Profession Name
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 36),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        professionName,
                        style: tsHeading2SemiBoldBlack,
                      ),
                      SvgPicture.asset(
                        'assets/icon/icon_cash.svg',
                        width: 29,
                      )
                    ],
                  )
              ),
              SizedBox(height: 26),
              //Container Profession Description
              Container(
                margin: EdgeInsets.symmetric(horizontal: 36),
                child: Text(
                  professionDescription,
                  style: tsHeading4MediumBlack,
                ),
              ),
              SizedBox(height: 26)
            ],
          )
        ],
      ),
    );
  }
}