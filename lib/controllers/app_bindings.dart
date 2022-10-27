import 'package:get/get.dart';
import 'package:rebellion/controllers/controller_news.dart';

class AppBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(ControllerNews.defaultInit(), permanent: true);
  }
}
