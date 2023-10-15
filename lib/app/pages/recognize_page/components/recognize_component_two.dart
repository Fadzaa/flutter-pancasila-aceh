import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_pancasila_aceh/common/helper/themes.dart';

class RecognizeComponentTwo extends StatelessWidget {
  const RecognizeComponentTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Aceh itu banyak kulinernya lhoo", style: tsHeading3MediumBlack,),
          
          Text("Kuliner Khas Provinsi Aceh", style: tsHeading1BoldBlack,),

          SizedBox(height: 65,),

          Stack(
            children: [
              Container(
                height: 394,
                width: 968,
                padding: const EdgeInsets.fromLTRB(43, 0, 43, 43),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    image: DecorationImage(
                        image: AssetImage(""),
                        fit: BoxFit.fill
                    )
                ),

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Sie Itik", style: tsHeading2SemiBoldWhite,),

                    SizedBox(height: 18,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 571,
                          child: Text("Hidangan bebek panggang atau goreng khas Aceh yang disajikan dengan saus pedas berbumbu kaya.",
                            style: tsHeading3MediumWhite,),
                        ),
                        
                        ElevatedButton(
                            onPressed: () {

                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.transparent,
                              side: BorderSide(color: actionColor),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(34),
                              )
                            ),
                            child: Text(
                              "Lihat",
                              style: GoogleFonts.poppins(
                                color: actionColor,
                                fontSize: 18,
                                fontWeight: FontWeight.w600
                              )
                            )
                        )
                      ],
                    ),



                  ],
                ),
              ),


            ],
          )

        ],
      ),
    );
  }
}
