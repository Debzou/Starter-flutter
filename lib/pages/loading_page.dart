import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:rebellion/components/app_bar/app_bar.dart';
import 'package:rebellion/controllers/controller_news.dart';

class LoadingPage extends StatelessWidget {
  const LoadingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final ControllerNews newsController = Get.find();

    return Obx(() {
      if (newsController.isLoaded.isTrue) {
        Future.delayed(const Duration(seconds: 2), () {
          newsController.navigate();
        });
      }
      return SafeArea(
        child: Scaffold(
          appBar: CustomAppBar(
            AppBar(),
            enabledBackButton: false,
          ),
          body: Center(
            //child: CustomLoader(),
            child: Lottie.asset('assets/loader.json'),
          ),
        ),
      );
    });
  }
}
