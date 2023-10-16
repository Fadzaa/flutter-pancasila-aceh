import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_pancasila_aceh/common/helper/themes.dart';

class RecognizeComponentOne extends StatelessWidget {
  const RecognizeComponentOne({super.key});

  Widget imageCard({required double width, required double height, required String imagePath}) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          image: DecorationImage(
              image: AssetImage(imagePath),
              fit: BoxFit.fill
          )

      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(108, 117, 118, 0),
      child: Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                    text: TextSpan(
                      text:  'Aceh tu \nMenarik',
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              color: primaryTextColor,
                              fontWeight: FontWeight.w700,
                              fontSize: 60
                          )
                      ),
                      children: [
                        TextSpan(
                            text: ',euy',
                            style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                color: actionColor,
                                fontWeight: FontWeight.w700,
                                fontSize: 60
                            )
                        )
                        )
                      ]
                    ),
                ),


                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 30.0),
                      child: imageCard(
                          width: 340,
                          height: 152,
                          imagePath: "assets/images/icon_aceh_1.JPG"
                      ),
                    ),

                    SizedBox(width: 24,),

                    imageCard(
                        width: 204,
                        height: 183,
                        imagePath: "assets/images/icon_aceh_2.jpg"
                    ),

                    SizedBox(width: 41,)
                  ],
                ),


              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly ,
              children: [


                imageCard(
                    width: 470,
                    height: 235,
                    imagePath: "assets/images/icon_aceh_3.jpg"
                ),



                imageCard(
                    width: 280,
                    height: 317,
                    imagePath: "assets/images/icon_aceh_4.jpg"
                ),

                imageCard(
                    width: 281,
                    height: 190,
                    imagePath: "assets/images/icon_aceh_5.jpeg"
                )
              ],
            )


          ],
        ),
      ),
    );
  }
}
