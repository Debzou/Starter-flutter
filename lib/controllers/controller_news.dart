import 'dart:async';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:rebellion/services/service_news.dart';

class ControllerNews extends GetxController {
  var isLoaded = false.obs;
  late final ServiceHttpNews service;

  ControllerNews(this.service);

  factory ControllerNews.defaultInit() {
    return ControllerNews(ServiceHttpNews(httpClient: http.Client()));
  }

  @override
  void onInit() {
    super.onInit();
    navigate();
  }

  Future<void> navigate() async {
    await Future.delayed(const Duration(seconds: 2));
    Get.offAllNamed("/home");
  }

  Future<void> fetchNews() async {
    var newsFetch = await service.fetchNews();
  }
}
