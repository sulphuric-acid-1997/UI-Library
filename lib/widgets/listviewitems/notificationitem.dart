
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_lib/datamodels/notifications.dart';

import '../../resources/font_manager.dart';
import '../../resources/values_manager.dart';

class NotificationListItem extends StatelessWidget {
  final NotificationDataModel data;
  const NotificationListItem({
    required this.data,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.grey,
      decoration: const BoxDecoration(
          color: Color(0xFFC0C3C7),
          borderRadius: BorderRadius.all(Radius.circular(AppSize.s10))),
      margin: const EdgeInsets.all(AppMargin.m10),
      child: Padding(
        padding: const EdgeInsets.all(AppPadding.p10),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
            AutoSizeText(
              data.dateTime,
              style: const TextStyle(color: Color(0xFF96989C), fontSize: FontSize.s15),
                minFontSize: FontSize.s15,
            ),
            AutoSizeText(
              data.content,
              style: const TextStyle(color: Colors.black, fontSize: FontSize.s20 ),
                minFontSize: FontSize.s20,

            ),
          ],
        ),
      ),
    );
  }
}
