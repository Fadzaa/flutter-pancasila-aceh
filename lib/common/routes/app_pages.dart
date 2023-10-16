import 'package:get/get.dart';
import 'package:web_pancasila_aceh/app/pages/economic_page/economic_page_binding.dart';
import 'package:web_pancasila_aceh/app/pages/economic_page/economic_page_view.dart';
import 'package:web_pancasila_aceh/app/pages/history_page/history_page_binding.dart';
import 'package:web_pancasila_aceh/app/pages/history_page/history_page_view.dart';
import 'package:web_pancasila_aceh/app/pages/landing_page/landing_page_binding.dart';
import 'package:web_pancasila_aceh/app/pages/landing_page/landing_page_view.dart';
import 'package:web_pancasila_aceh/app/pages/recognize_page/recognize_page_binding.dart';
import 'package:web_pancasila_aceh/app/pages/recognize_page/recognize_page_view.dart';



part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.RECOGNIZE_PAGE;

  static final routes = [
    GetPage(
      name: _Paths.LANDING_PAGE,
      page: () => LandingPageView(),
      binding: LandingPageBinding(),
      transition: Transition.noTransition
    ),
    GetPage(
      name: _Paths.HISTORY_PAGE,
      page: () => HistoryPageView(),
      binding: HistoryPageBinding(),
      transition: Transition.noTransition

    ),
    GetPage(
      name: _Paths.ECONOMIC_PAGE,
      page: () => EconomicPageView(),
      binding: EconomicPageBinding(),
      transition: Transition.noTransition

    ),
    GetPage(
      name: _Paths.RECOGNIZE_PAGE,
      page: () => RecognizePageView(),
      binding: RecognizePageBinding(),
      transition: Transition.noTransition

    ),
  ];
}
