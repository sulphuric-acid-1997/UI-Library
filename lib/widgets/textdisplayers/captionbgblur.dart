import 'dart:ui';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../resources/values_manager.dart';

class CaptionBgblur extends StatelessWidget {
  final String? title;
  const CaptionBgblur({
    Key? key, this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
        child: Container(
          color: Colors.grey.withOpacity(0.1),
          alignment: Alignment.center,
          child: SizedBox(
            width: double.infinity,
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 225, 225, 225)
                      .withOpacity(0.4)),
              child: AutoSizeText( title ??
                "Instrumental in Past... \nInvested in Future",
                minFontSize: AppSize.s20,
                style: TextStyle(
                  fontSize: width * 0.08,
                  fontStyle: FontStyle.normal,
                ).copyWith(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
