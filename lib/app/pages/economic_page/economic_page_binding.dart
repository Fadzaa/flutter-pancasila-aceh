import 'package:get/get.dart';
import 'package:web_pancasila_aceh/app/pages/economic_page/economic_page_controller.dart';

class EconomicPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EconomicPageController>(
      () => EconomicPageController(),
    );
  }
}
