import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_lib/widgets/ui-lib.dart';

import 'bigheader.dart';
import 'captionbgblur.dart';
import 'content.dart';
import 'header.dart';
import 'overview_tile.dart';

class TextDisplayers extends StatelessWidget {
  late bool bigHeader = false;
  late bool captionBgBlur = false;
  late bool content = false;
  late bool header = false;
  late bool overViewTile = false;

  late String title;
  late TextStyle? titlestyle;

  late String? body;
  late TextStyle? bodystyle;
  late TextStyle? readmorestyle;

  late String subTitle;
  late Color? subTitleColor;
  late Color? titleColor;

  TextDisplayers({
    Key? key,
  }) : super(key: key);

  TextDisplayers.bigHeader({Key? key, required this.title, this.titlestyle})
      : bigHeader = true,
        super(key: key);
  TextDisplayers.captionBgBlur({Key? key})
      : captionBgBlur = true,
        super(key: key);
  TextDisplayers.content({
    Key? key,
    required this.body,
    required this.title,
    this.bodystyle,
    this.readmorestyle,
    this.titlestyle,
  })  : content = true,
        super(key: key);

  TextDisplayers.header({
    Key? key,
    required this.title,
  })  : header = true,
        super(key: key);

  TextDisplayers.overViewTile(
      {Key? key,
      required this.title,
      required this.subTitle,
      this.subTitleColor,
      this.titleColor})
      : overViewTile = true,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    if (bigHeader) {
      return BigHeader(
        title: title,
        titlestyle:
            titlestyle ?? const TextStyle(color: Colors.black, fontSize: 20),
      );
    }
    if (captionBgBlur) {
      return const CaptionBgblur();
    }

    if (content) {
      return Conttent(
        body: body ?? 'title',
        bodystyle:
            bodystyle ?? const TextStyle(fontSize: 20, color: Colors.white),
        readmorestyle:
            readmorestyle ?? const TextStyle(fontSize: 20, color: Colors.white),
        title: title,
        titlestyle:
            titlestyle ?? const TextStyle(fontSize: 20, color: Colors.white),
      );
    }

    if (header) {
      return Header(
        title: title,
      );
    }
    if (overViewTile) {
      return OverviewTile(
        subTitle: subTitle,
        subTitleColor: subTitleColor ?? Colors.white,
        title: title,
        titleColor: titleColor ?? Colors.white,
      );
    }

    return const AutoSizeText('use named construtor please');
  }
}
