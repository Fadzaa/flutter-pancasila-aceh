import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:web_pancasila_aceh/app/modules/landing_page/components/landing_component_four.dart';
import 'package:web_pancasila_aceh/app/modules/landing_page/components/landing_component_one.dart';
import 'package:web_pancasila_aceh/app/modules/landing_page/components/economical_card_widget.dart';
import 'package:web_pancasila_aceh/app/modules/landing_page/components/landing_component_three.dart';

import '../components/landing_component_five.dart';
import '../components/landing_component_two.dart';
import '../controllers/landing_page_controller.dart';

class LandingPageView extends GetView<LandingPageController> {
  const LandingPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [

            ],
          ),
        ),
      ),
    );
  }
}
