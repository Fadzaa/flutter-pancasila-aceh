import 'package:flutter/material.dart';
import 'package:web_pancasila_aceh/app/global_component/footer.dart';
import 'package:web_pancasila_aceh/app/global_component/hero_component_detail.dart';
import 'package:web_pancasila_aceh/app/pages/detail_page/detail_budaya_page/components/detail_budaya_component_one.dart';


class DetailBudayaPageView extends StatelessWidget {
  const DetailBudayaPageView({super.key});

  @override
  Widget build(BuildContext context) {

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
              DetailBudayaComponentOne(),
              Footer(),
            ],
          ),
        )
      ),
    );
  }
}