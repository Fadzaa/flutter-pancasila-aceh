import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:web_pancasila_aceh/app/modules/landing_page/components/LandingComponentOne.dart';
import 'package:web_pancasila_aceh/app/modules/landing_page/components/EconomicalCardWidget.dart';

import '../controllers/landing_page_controller.dart';

class LandingPageView extends GetView<LandingPageController> {
  const LandingPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          landingComponentOne(),
          economicalCard(
            professionName: 'professionName', 
            professionDescription: 'Sektor pertanian di Aceh mencakup budidaya padi, kelapa sawit, kopi, karet, buah-buahan, dan sayuran, serta memiliki peran penting dalam mendukung ketahanan pangan dan perekonomian provinsi ini.',
            professionImage: 'assets/images/perekonomian_perkebunan.png', 
            context: context
          )
        ],
      ),
    );
  }
}
