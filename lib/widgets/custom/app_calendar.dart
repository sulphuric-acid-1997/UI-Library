import 'package:flutter/material.dart';
import 'package:flutter_ui_lib/resources/values_manager.dart';

class AppCalendar extends StatelessWidget {
  DateTime? date;
  AppCalendar({
    Key? key,
    this.date,
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
        Text("THU", style: TextStyle(fontSize: width * 0.045, color: Colors.black)
            //  TextStyle(
            //   color: Colors.black54,
            //   fontSize: FontSize.s14,
            // ),
            ),
        Text(date == null ? '05' : date!.day.toString(),
            style: TextStyle(fontSize: width * 0.045, color: Colors.black)),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: AppPadding.p3),
          child: Container(height: 1.0, width: 30.0, color: Colors.black54),
        ),
        Text("APR", style: TextStyle(fontSize: width * 0.045, color: Colors.black)),
      ],
    );
  }
}
