import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_lib/widgets/custom/app_calendar.dart';
import '../../resources/values_manager.dart';

class RequestItem extends StatelessWidget {
  const RequestItem({
    Key? key,
    required this.onclick,
    required this.date,
    required this.companyName,
    required this.status,
    required this.approvalemail,
    required this.department,
    this.caldate,
    this.weekday,
    this.weekdaystyle,
    this.daystyle,
    this.monthstyle,
    this.companyNamestyle,
    this.approvalemailstyle,
    this.departmenttyle,
  }) : super(key: key);

  // final RequestListDataModel data;
  final Function onclick;
  final DateTime date;
  final String companyName;
  final TextStyle? companyNamestyle;
  final TextStyle? approvalemailstyle;
  final TextStyle? departmenttyle;

  final String status;
  final String approvalemail;

  final String department;

  final DateTime? caldate;
  final String? weekday;
  final TextStyle? weekdaystyle;
  final TextStyle? daystyle;

  final TextStyle? monthstyle;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(
          vertical: AppPadding.p5, horizontal: AppPadding.p10),
      child: InkWell(
        onTap: () {
          onclick();
        },
        child: Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(AppPadding.p20, AppPadding.p10,
                  AppPadding.p5, AppPadding.p10),
              child: Column(
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      AppCalendar(
                        date: caldate,
                        weekday: weekday,
                        weekdaystyle: weekdaystyle,
                        daystyle: daystyle,
                        monthstyle: monthstyle,
                      ),
                      const SizedBox(
                        width: AppSize.s30,
                      ),
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                AutoSizeText(
                                  companyName,
                                  style: companyNamestyle ??
                                      TextStyle(
                                          fontSize: width * 0.045,
                                          color: Colors.black),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: statusColor(status),
                                    // border: Border.all()
                                    borderRadius:
                                        BorderRadius.circular(AppSize.s10),
                                  ),
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.all(AppPadding.p8),
                                    child: AutoSizeText(status),
                                  ),
                                )
                              ],
                            ),
                            AutoSizeText(
                              department,
                              style: departmenttyle ??
                                  TextStyle(
                                      fontSize: width * 0.045,
                                      color: Colors.black),
                            ),
                            AutoSizeText(
                              approvalemail,
                              style: approvalemailstyle ??
                                  TextStyle(
                                      fontSize: width * 0.045,
                                      color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )),
      ),
    );
  }
}

Color statusColor(String status) {
  switch (status) {
    case 'approved':
      return Colors.green;
    case 'waiting':
      return Colors.amber;
    case 'rejected':
      return Colors.red;
    default:
      return Colors.blue;
  }
}
