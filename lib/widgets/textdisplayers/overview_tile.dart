import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class OverviewTile extends StatelessWidget {
  final String title;
  final String subTitle;
  final Color titleColor;
  final Color subTitleColor;
  final double titleFontSize;
  final double subTitleFontSize;

  const OverviewTile(
      {Key? key,
      required this.title,
      required this.subTitle,
      this.titleColor = Colors.black,
      this.subTitleColor = Colors.black,
      this.titleFontSize = 11.0,
      this.subTitleFontSize = 10.0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var space = const SizedBox(height: 3);
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AutoSizeText(title,
              style: TextStyle(color: titleColor, fontSize: titleFontSize)),
          space,
          AutoSizeText(subTitle,
              style: TextStyle(
                  color: subTitleColor.withOpacity(0.5),
                  fontSize: subTitleFontSize)),
        ],
      ),
    );
  }
}
