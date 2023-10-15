import 'package:flutter/material.dart';
import 'package:web_pancasila_aceh/common/helper/themes.dart';

class RecognizeComponentThree extends StatelessWidget {
  const RecognizeComponentThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Selain kuliner, ada juga wisata", style: tsHeading3MediumBlack,),
          
          Text("Wisata Provinsi Aceh", style: tsHeading1BoldBlack,),


        ],
      ),
    );
  }
}
