import 'package:flutter/material.dart';
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
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.fromLTRB(108, 117, 118, 0),
        child: Column(
          children: [
            Row(
              children: [
                Text("Aceh tu \nMenarik, euy", style: tsHeading1BoldBlack,),

                 imageCard(
                     width: 340,
                     height: 152,
                     imagePath: "imagePath"
                 ),

                imageCard(
                    width: 204,
                    height: 183,
                    imagePath: "imagePath"
                ),


              ],
            ),

            Row(
              children: [
                imageCard(
                    width: 470,
                    height: 235,
                    imagePath: "imagePath"
                ),

                imageCard(
                    width: 280,
                    height: 317,
                    imagePath: "imagePath"
                ),

                imageCard(
                    width: 281,
                    height: 190,
                    imagePath: "imagePath"
                )
              ],
            )


          ],
        ),
      ),
    );
  }
}
