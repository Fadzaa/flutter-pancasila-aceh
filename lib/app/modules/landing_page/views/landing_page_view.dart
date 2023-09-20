import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/landing_page_controller.dart';

class LandingPageView extends GetView<LandingPageController> {
  const LandingPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LandingPageView'),
        centerTitle: true,
      ),
      body: const Column(
        children: [
          Center(
            child: Text(
              'LandingPageView is working',
              style: TextStyle(fontSize: 20),
            ),
          ),

          Center(
            child: Text(
              'LandingPageView is working',
              style: TextStyle(fontSize: 20),
            ),
          ),

        ],
      ),
    );
  }
}
