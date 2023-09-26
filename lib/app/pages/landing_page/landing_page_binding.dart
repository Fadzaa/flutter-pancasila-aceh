import 'package:get/get.dart';
import 'package:web_pancasila_aceh/app/pages/landing_page/landing_page_controller.dart';


class LandingPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LandingPageController>(
      () => LandingPageController(),
    );
  }
}
