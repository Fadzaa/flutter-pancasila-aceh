import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:web_pancasila_aceh/common/helper/themes.dart';
import 'package:web_pancasila_aceh/common/base/abstract_responsive_state.dart';

class EconomicComponentOne extends ResponsiveScreenState {

  @override
  Widget build(BuildContext context) {
    return super.build(context);
  }

  @override
  Widget buildDesktopPage(context) {
    
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;

    // TODO: implement buildDesktopPage
    return Column(
      children: [
        Container(
          width: width * 0.7,
          height: height * 0.6,
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
        SizedBox(height: height * 0.1),
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

  @override
  Widget buildMobilePage(context) {

    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;

    // TODO: implement buildMobilePage
    return Container(
      child: Column(
        children: [
          Container(
            width: width * 0.8,
            height: height * 0.5,
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
          SizedBox(height: height * 0.1),
          Container(
            width: width * 0.8,
            child: RichText(
              text: TextSpan(
                children: <TextSpan>[
                  TextSpan(
                    text: 'Aceh',
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
        ]
      ),
    );
  }
}