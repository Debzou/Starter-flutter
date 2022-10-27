import 'package:flutter/material.dart';
import 'package:rebellion/components/app_bar/app_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          AppBar(),
          enabledBackButton: false,
        ),
        body: Container(),
      ),
    );
  }
}
