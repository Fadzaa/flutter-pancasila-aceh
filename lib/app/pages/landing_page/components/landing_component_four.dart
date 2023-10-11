import 'package:flutter/material.dart';
import 'package:web_pancasila_aceh/common/helper/themes.dart';

class LandingComponentFour extends StatelessWidget {
  const LandingComponentFour({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 88, top: 34, right: 88),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Pengen liat pemerintahnya?',
                    style: tsHeading3MediumBlack,
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    'Galeri Pemimpin Aceh',
                    style: tsHeading1BoldBlack,
                    textAlign: TextAlign.left,
                  ),
                  Row(
                    children: [
                      Container(
                        width: MediaQuery.sizeOf(context).width * 0.2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 85),
                            Text(
                              'Mayor Jenderal TNI (Purn.) Achmad Marzuki',
                              style: tsHeading4BoldBlack,
                            ),
                            SizedBox(height: 49),
                            Text(
                              'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using Content here, content here, making it look like readable English. aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',
                              style: tsHeading4MediumBlack,
                              textAlign: TextAlign.left,
                            ),
                            SizedBox(height: 49),
                            Text(
                              '2022 - 2023',
                              style: tsHeading4BoldBlack,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(left: 400, top: 60, right: 6),
                child: Image.asset(
                  'assets/images/gubernur_foto_1.png',
                  width: 581,
                  height: 645,
                ),
              )
            ],
          ),
          Stack(
            children: [
              Container(
                margin: EdgeInsets.only(left: 78, right: 6),
                width: 277,
                height: 183,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    'assets/images/gubernur_foto_2.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 200, right: 6),
                width: 278,
                height: 218,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    'assets/images/gubernur_foto_4.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 90, top: 435, right: 6),
                width: 277,
                height: 241,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    'assets/images/gubernur_foto_3.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}