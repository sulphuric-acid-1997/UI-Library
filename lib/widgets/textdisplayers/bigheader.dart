import 'package:flutter/material.dart';

class BigHeader extends StatelessWidget {
  final String imageassets;
  final String title;
  final TextStyle? titlestyle;
  const BigHeader({
    Key? key,
    this.title = 'Lorem ipsum dolor sit amet, consectetur',
    this.imageassets = 'assets/images/pcfc_logo.jpeg',
    this.titlestyle
  }) : super(key: key);
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
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: const [],
            ),
            Image.asset(
              imageassets,
              height: 50,
            ),
            SizedBox(
              height: 6 * unitHeightValue,
            ),
            Text(
              title,
              style:titlestyle ?? TextStyle(
                  fontSize: width * 0.06, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}
