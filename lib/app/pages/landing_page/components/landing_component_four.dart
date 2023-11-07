import 'package:flutter/material.dart';
import 'package:web_pancasila_aceh/common/base/abstract_responsive_state.dart';
import 'package:web_pancasila_aceh/common/helper/themes.dart';


class LandingComponentFour extends ResponsiveScreenState {
  LandingComponentFour({
    Key? key,
  });

  @override
  Widget build(BuildContext context) {
    return super.build(context);
  }

  @override
  Widget buildDesktopPage(BuildContext context) {

    double width = MediaQuery.sizeOf(context).width;
    double height = MediaQuery.sizeOf(context).height;

    // TODO: implement buildDesktopPage
    return Container(
      margin: EdgeInsets.symmetric(vertical: width * 0.05, horizontal: height * 0.1),
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
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
                margin: EdgeInsets.only(left: width * 0.25, top: height * 0.1, right: 6),
                child: Image.asset(
                  'assets/images/gubernur_foto_1.png',
                  width: width * 0.4,
                  height: height ,
                ),
              )
            ],
          ),
          Stack(
            children: [
              Container(
                margin: EdgeInsets.only(left: width * 0.05, right: width * 0.01),
                width: width * 0.18,
                height: height * 0.25,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    'assets/images/gubernur_foto_2.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: height * 0.28, right: width * 0.01),
                width: width * 0.18,
                height: height * 0.28,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    'assets/images/gubernur_foto_4.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: width * 0.05, top: height * 0.6, right: width * 0.01),
                width: width * 0.18,
                height: height * 0.28,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    'assets/images/gubernur_foto_3.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  @override
  Widget buildMobilePage(BuildContext context) {
    // TODO: implement buildMobilePage
    return Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 35),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 35),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Pengen liat pemerintahnya?",
                          style: tsParagraph12MediumBlack,
                        ),
                        Text(
                          "Galeri Pemimpin Aceh",
                          style: tsHeadingMobile,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Stack(
                    children: [
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                width: 151,
                                height: 107,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/gubernur_foto_2.png"),
                                        fit: BoxFit.fill)),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                width: 161,
                                height: 135,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(15),
                                        bottomLeft: Radius.circular(15)),
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/gubernur_foto_4.jpg"),
                                        fit: BoxFit.fill)),
                              ),
                            ],
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Container(
                              width: 160,
                              height: 110,
                              margin: EdgeInsets.only(top: 10, right: 35),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "assets/images/gubernur_foto_3.jpg"),
                                      fit: BoxFit.fill)),
                            ),
                          )
                        ],
                      ),
                      Image.asset("assets/images/gubernur_foto_1.png",
                          width: 220)
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 35),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Mayor Jenderal TNI (Purn.) Achmad Marzuki",
                          style: tsParagraph16BoldBlack,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. ",
                          style: tsParagraph12MediumBlack,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
