

import 'package:flutter/material.dart';
import 'package:flutter_ui_lib/widgets/appbar/custom_app_bar.dart';

class CustomAppBarPage extends StatelessWidget {
  const CustomAppBarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(onPressNotification: () {  }, onPressProfile: () {  },),
      body: Container(),
    );
  }
}
