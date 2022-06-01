import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class NumberPlate extends StatelessWidget {
  final String place;
  final String series;
  final String number;
  final TextStyle? placestyle;
  final TextStyle? seriesstyle;
  final TextStyle? numberstyle;


  const   NumberPlate({
    Key? key,
    required this.place,
    required this.series,
    required this.number, this.placestyle, this.seriesstyle, this.numberstyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 50),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 2.0),
        borderRadius: const BorderRadius.all(Radius.circular(10.0)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              AutoSizeText(place.toUpperCase(),
                  style: placestyle ?? TextStyle(
                          fontSize: width * 0.06, fontWeight: FontWeight.w500)
                      .copyWith(
                          color: Colors.black, fontWeight: FontWeight.bold)),
              AutoSizeText(series.toUpperCase(),
                  style: seriesstyle ?? TextStyle(
                          fontSize: width * 0.06, fontWeight: FontWeight.w500)
                      .copyWith(
                          color: Colors.black, fontWeight: FontWeight.bold)),
            ],
          ),
          AutoSizeText(number,
              style: numberstyle ?? TextStyle(
                fontSize: width * 0.12,
                fontStyle: FontStyle.normal,
              ).copyWith(color: Colors.black, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
