import 'package:flutter/material.dart';
import 'package:web_pancasila_aceh/common/helper/themes.dart';
class LandingComponentTwo extends StatelessWidget {
  const LandingComponentTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size mediaQuery = MediaQuery.of(context).size;
    final double width = mediaQuery.width;
    final double height = mediaQuery.height;

    Widget circleButton({required bool isActive}) {
      return Container(
        width: 40,
        height: 40,
        decoration: isActive
            ? const BoxDecoration(
            color: primaryColor,
            shape: BoxShape.circle
        )
            : BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            border: Border.all(color: primaryColor)
        ),
        child: Icon(Icons.arrow_back_ios_rounded, color: isActive ? primaryColor : Colors.white,),
      );
    }

    return Container(
      width: width,
      height: height,
      child: Column(
        children: [
          Column(
            children: [
              Text("Apa yang menarik dari Aceh?", style: tsSubHeading,),

              Text("Destinasi Wisata Favorit?", style: tsHeading,),
            ],
          ),
          Row(
            children: [
              circleButton(isActive: false),
              circleButton(isActive: true)
            ],
          ),

          Container(
            height: 400,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 4,
                itemBuilder: (context, index) {
                  return Container(
                    height: 370,
                    width: 275,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("images/assets/wisata_museum_tsunami_aceh.jpeg",
                        ), fit: BoxFit.fill
                      ),


                    ),
                    child: Text("Test Test Test"),
                  );
                }
            ),
          )

        ],
      ),
    );
  }
}


