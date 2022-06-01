import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_lib/resources/font_manager.dart';

class FooterItem extends StatelessWidget {
  final Function onclick;
  final String title;
  final TextStyle? style;
  final bool showline; // makr this true for last widget
  const FooterItem(
      {Key? key,
      required this.onclick,
      required this.title,
      this.style,
      this.showline = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        TextButton(
          child: AutoSizeText(title,
              style: style ??
                  const TextStyle(
                    color: Colors.black,
                    fontSize: FontSize.s15,
                    fontWeight: FontWeightManager.regular,
                  )),
          onPressed: () {
            onclick();
          },
        ),
        if (!showline)
          const SizedBox(
            // width: 10,
            child: AutoSizeText(
              '|',
              textAlign: TextAlign.center,
            ),
          ),
      ],
    );
  }
}

class Footer extends StatelessWidget {
  final List<FooterItem> widgets;
  final String? assets;
  final double height;
  const Footer({
    Key? key,
    required this.widgets,
    this.assets,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        height: height,
        decoration:
            const BoxDecoration(color: Color.fromARGB(255, 225, 225, 225)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            assets != null
                ? const SizedBox(
                    height: 20,
                  )
                : const SizedBox(),
            assets != null
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset(
                        'assets/images/app_bar_logo.png',
                        width: MediaQuery.of(context).size.width * 0.9,
                      ),
                    ],
                  )
                : const SizedBox(),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              ...widgets,
            ]),
          ],
        ),
      );
}
