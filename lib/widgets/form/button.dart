import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import '../../resources/values_manager.dart';

class Button1 extends StatelessWidget {
  final String title;
  final TextStyle? titlestyle;
  final Function? onclick;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? buttonstylepadding;

  final Size? size;
  const Button1(
      {Key? key,
      required this.title,
      this.onclick,
      this.titlestyle,
      this.size,
      this.buttonstylepadding,
      this.padding})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(AppPadding.p8),
      child: TextButton(
        key: key,
        child: Padding(
          padding: padding ?? const EdgeInsets.all(8.0),
          child: AutoSizeText(
            title,
            style: titlestyle ?? const TextStyle(color: Colors.white),
            minFontSize: 18,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        style: TextButton.styleFrom(
          minimumSize: size ?? Size(MediaQuery.of(context).size.width - 50, 50),
          primary: Colors.white, //Text Color
          padding: buttonstylepadding ?? EdgeInsets.all(width * 0.03),
          backgroundColor: Colors.black, //Button Background Color
        ),
        onPressed: () {
          if (onclick != null) {
            onclick!();
          }
        },
      ),
    );
  }
}
