import 'dart:developer' as developer;

import 'package:get/get.dart';
import 'package:rebellion/pages/home_page.dart';
import 'package:rebellion/pages/loading_page.dart';

appRoutes() => [
      GetPage(
        name: '/',
        page: () => const LoadingPage(),
        transition: Transition.rightToLeftWithFade,
        middlewares: [MyObserver()],
        transitionDuration: const Duration(milliseconds: 500),
      ),
      GetPage(
        name: '/home',
        page: () => const HomePage(),
        transition: Transition.rightToLeftWithFade,
        middlewares: [MyObserver()],
        transitionDuration: const Duration(milliseconds: 500),
      ),
    ];

class MyObserver extends GetMiddleware {
  @override
  GetPage? onPageCalled(GetPage? page) {
    developer.log(Get.parameters.toString());
    return super.onPageCalled(page);
  }
}
