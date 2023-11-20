import 'package:flutter/animation.dart';
import 'package:get/get.dart';

class LandingPageController extends GetxController with GetSingleTickerProviderStateMixin{
  final hoveredIndex = RxInt(-1);
  late AnimationController animationController;
  final isHover = false.obs;

  @override
  void onInit() {
    super.onInit();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    );
  }

  void setHoveredIndex(int index) {
    hoveredIndex.value = index;
    if (index != -1) {
      animationController.forward();
    } else {
      animationController.reverse();
    }
  }

  @override
  void onClose() {
    animationController.dispose();
    super.onClose();
  }
}

