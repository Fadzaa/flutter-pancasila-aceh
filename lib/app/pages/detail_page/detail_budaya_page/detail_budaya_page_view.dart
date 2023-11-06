import 'package:flutter/material.dart';
import 'package:web_pancasila_aceh/app/global_component/footer.dart';
import 'package:web_pancasila_aceh/app/global_component/hero_component_detail.dart';
import 'package:web_pancasila_aceh/app/pages/detail_page/detail_budaya_page/components/detail_budaya_component_one.dart';
import 'package:web_pancasila_aceh/app/pages/detail_page/detail_budaya_page/components/detail_budaya_staggred.dart';
import 'package:web_pancasila_aceh/common/helper/themes.dart';

class DetailBudayaPageView extends StatelessWidget {
  const DetailBudayaPageView({super.key});

  @override
  Widget build(BuildContext context) {

    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              HeroComponentDetail(
                imagePath: "assets/images/budaya_aceh_hero.png", 
                headingText: "KEBUDAYAAN PROVINSI ACEH"
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DetailBudayaComponentStaggred(),
                  DetailBudayaComponentOne(),
                ],
              ),
              Footer(),
            ],
          ),
        )
      ),
    );
  }
}