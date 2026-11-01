import 'package:flutter/material.dart';

import '../../../constants.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      title: Icon(Icons.dashboard, color: AppConstants.primaryColor),
      actions: [Image.asset("assets/images/profile.png")],
      actionsPadding: EdgeInsets.only(right: 10),
    );
  }
}
