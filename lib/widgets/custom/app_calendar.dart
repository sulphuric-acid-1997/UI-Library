import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_lib/resources/values_manager.dart';
import 'package:intl/intl.dart';

class AppCalendar extends StatefulWidget {
  final DateTime date;
  final String? weekday;
  final TextStyle? weekdaystyle;
  final TextStyle? daystyle;
  final Color? color;

  final TextStyle? monthstyle;

  const AppCalendar({
    Key? key,
    required this.date,
    this.weekday,
    this.weekdaystyle,
    this.daystyle,
    this.monthstyle, this.color,
  }) : super(key: key);

  @override
  State<AppCalendar> createState() => _AppCalendarState();
}

class _AppCalendarState extends State<AppCalendar> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        SizedBox(height: MediaQuery.of(context).size.height * 0.01),
        AutoSizeText(
            DateFormat('EEEE')
                .format(widget.date)
                .toString()
                .substring(0, 3)
                .toUpperCase(),
            style: widget.weekdaystyle ??
                TextStyle(fontSize: width * 0.045, color: widget.color ??  Colors.black)
            //  TextStyle(
            //   color: Colors.black54,
            //   fontSize: FontSize.s14,
            // ),
            ),
        AutoSizeText(DateFormat('d').format(widget.date).toString(),
            style: widget.daystyle ??
                TextStyle(fontSize: width * 0.045, color: widget.color ??  Colors.black)),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: AppPadding.p3),
          child: Container(height: 1.0, width: 30.0, color: widget.color ??  Colors.black54),
        ),
        AutoSizeText(
            DateFormat('MMMM')
                .format(widget.date)
                .toString()
                .toUpperCase()
                .substring(0, 3),
            style: widget.monthstyle ??
                TextStyle(fontSize: width * 0.045, color: widget.color ??  Colors.black)),
      ],
    );
  }
}
