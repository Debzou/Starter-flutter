import 'package:flutter/material.dart';
import 'package:rebellion/components/app_bar/sharing_config.dart';
import 'package:rebellion/design_config.dart';
import 'package:share_plus/share_plus.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final AppBar appBar;
  final bool enabledBackButton;
  const CustomAppBar(this.appBar, {Key? key, required this.enabledBackButton})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('Rebellion', style: TextStyle(fontSize: fontTitle10)),
      backgroundColor: backgroundColorAppBar,
      automaticallyImplyLeading: enabledBackButton,
      actions: [
        IconButton(
            onPressed: () => _share(), icon: const Icon(Icons.share_outlined)),
      ],
    );
  }

  void _share() async {
    await Share.share(comment, subject: subject);
  }

  @override
  Size get preferredSize => Size.fromHeight(appBar.preferredSize.height);
}
