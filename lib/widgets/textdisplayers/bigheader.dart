import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class BigHeader extends StatelessWidget {
  final String imageurl;
  final String title;
  final TextStyle? titlestyle;
  const BigHeader(
      {Key? key,
      this.title = 'Lorem ipsum dolor sit amet, consectetur',
      this.imageurl = 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a6/Logo_NIKE.svg/1200px-Logo_NIKE.svg.png',
      this.titlestyle})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    double unitHeightValue = MediaQuery.of(context).size.height * 0.01;
    double width = MediaQuery.of(context).size.width;

    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(
            horizontal: unitHeightValue * 6, vertical: unitHeightValue * 4),
        decoration:
            const BoxDecoration(color: Color.fromARGB(255, 225, 225, 225)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: const [],
            ),
            Image.network(
              imageurl,
              height: 50,
            ),
            // SizedBox(
            //   height: 6 * unitHeightValue,
            // ),
            AutoSizeText(
              title,
              maxLines: 2,
              style: titlestyle ??
                  TextStyle(
                      fontSize: width * 0.06, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}
