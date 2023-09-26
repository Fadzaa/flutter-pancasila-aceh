import 'package:get/get.dart';
import 'package:web_pancasila_aceh/app/pages/recognize_page/recognize_page_controller.dart';


class RecognizePageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RecognizePageController>(
          () => RecognizePageController(),
    );
  }
}
