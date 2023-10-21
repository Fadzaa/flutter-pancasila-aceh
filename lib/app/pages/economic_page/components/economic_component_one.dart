import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:web_pancasila_aceh/common/helper/themes.dart';

class EconomicComponentOne extends StatelessWidget {
  const EconomicComponentOne({super.key});

  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.sizeOf(context).width;
    double height = MediaQuery.sizeOf(context).height;

    return Column(
      children: [
        Container(
          width: width * 0.7,
          height: height * 0.6,
          margin: EdgeInsets.only(top: 32, left: 43, right: 43),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(28),
            image: DecorationImage(
              image: AssetImage('assets/images/perekonomian_perikanan.png'),
              fit: BoxFit.cover,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                offset: Offset(0, 3),
                blurRadius: 6,
              ),
            ],
          ),
        ),
        SizedBox(height: 60),
        Container(
          width: width * 0.7,
          child: RichText(
            text: TextSpan(
              children: <TextSpan>[
                TextSpan(
                  text: '            Aceh',
                  style: tsHeading4BoldBlack,
                ),
                TextSpan(
                  text: ' - Perekonomian Aceh didominasi oleh sektor pertanian, perikanan, perkebunan, dan pariwisata. Kelapa sawit, kopi, dan hasil laut menjadi andalan ekonomi. Meskipun menghadapi tantangan seperti perubahan iklim dan ketidakberlanjutan, Aceh memiliki potensi investasi yang menjanjikan, khususnya dalam sektor ekonomi syariah. Keindahan alam Aceh juga mendukung pertumbuhan pariwisata.',
                  style: tsHeading4MediumBlack,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}