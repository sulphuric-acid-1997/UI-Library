import 'package:flutter/material.dart';

class NumberPlate extends StatelessWidget {
  final String place;
  final String series;
  final String number;

  const NumberPlate({
    Key? key,
    required this.place,
    required this.series,
    required this.number,
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
              Text(place.toUpperCase(),
                  style: TextStyle(
                          fontSize: width * 0.06, fontWeight: FontWeight.w500)
                      .copyWith(
                          color: Colors.black, fontWeight: FontWeight.bold)),
              Text(series.toUpperCase(),
                  style: TextStyle(
                          fontSize: width * 0.06, fontWeight: FontWeight.w500)
                      .copyWith(
                          color: Colors.black, fontWeight: FontWeight.bold)),
            ],
          ),
          Text(number,
              style: TextStyle(
                fontSize: width * 0.12,
                fontStyle: FontStyle.normal,
              ).copyWith(color: Colors.black, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
