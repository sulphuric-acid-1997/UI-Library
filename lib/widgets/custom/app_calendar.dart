import 'package:flutter/material.dart';
import 'package:flutter_ui_lib/resources/values_manager.dart';

class AppCalendar extends StatelessWidget {
  final DateTime? date;
  final String? weekday;
  final TextStyle? weekdaystyle;
  final TextStyle? daystyle;

  final TextStyle? monthstyle;

  const AppCalendar({
    Key? key,
    this.date,
    this.weekday,
    this.weekdaystyle,
    this.daystyle,
    this.monthstyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        SizedBox(height: MediaQuery.of(context).size.height * 0.01),
        Text(weekday ?? "THU",
            style: weekdaystyle ??
                TextStyle(fontSize: width * 0.045, color: Colors.black)
            //  TextStyle(
            //   color: Colors.black54,
            //   fontSize: FontSize.s14,
            // ),
            ),
        Text(date == null ? '05' : date!.day.toString(),
            style: daystyle ??
                TextStyle(fontSize: width * 0.045, color: Colors.black)),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: AppPadding.p3),
          child: Container(height: 1.0, width: 30.0, color: Colors.black54),
        ),
        Text("APR",
            style: monthstyle ??
                TextStyle(fontSize: width * 0.045, color: Colors.black)),
      ],
    );
  }
}
