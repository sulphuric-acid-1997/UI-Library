import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  @override
  final Size preferredSize;
  final String title;
  final Function() onPressNotification;
  final Function() onPressProfile;
  final Color backgroundColor;
  final bool automaticallyImplyLeading;
  final double toolbarHeight;
  final double toolbarOpacity;
  final Color shadowColor;
  final double elevation;
  final double leadingWidth;

  CustomAppBar({
    Key? key,
    this.title = '',
    required this.onPressNotification,
    required this.onPressProfile,
    this.backgroundColor = Colors.white,
    this.automaticallyImplyLeading = false,
    this.toolbarHeight = 56,
    this.toolbarOpacity = 0.5,
    this.shadowColor = Colors.grey,
    this.elevation = 15,
    this.leadingWidth = 0,
  })  : preferredSize = const Size.fromHeight(50.0),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: !kIsWeb ? const Icon(Icons.menu, color: Colors.black) : null,
      leadingWidth: leadingWidth,
      title: Image.asset(
        "icon/app_bar_logo.png",
        fit: BoxFit.cover,
        width: 200,
      ),
      backgroundColor: backgroundColor,
      automaticallyImplyLeading: automaticallyImplyLeading,
      toolbarHeight: toolbarHeight,
      toolbarOpacity: toolbarOpacity,
      shadowColor: shadowColor,
      elevation: elevation,
      centerTitle: false,
      actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.notifications, color: Colors.black),
          onPressed: () => onPressNotification,
        ),
        IconButton(
          icon: const Icon(Icons.account_circle_rounded, color: Colors.black),
          onPressed: () => onPressProfile,
        ),
      ],
    );
  }
}
