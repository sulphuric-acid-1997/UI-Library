import 'package:flutter/material.dart';
import 'package:flutter_ui_lib/widgets/custom/app_calendar.dart';
import '../../resources/values_manager.dart';

class RequestItem extends StatelessWidget {
  const RequestItem( {
    Key? key,
    required this.onclick,
    required this.date,
    required this.companyName,
    required this.status,
    required this.approvalemail,
    required this.department,
  }) : super(key: key);

  // final RequestListDataModel data;
  final Function onclick;
  final DateTime date;
  final String companyName;
  final String status;
  final String approvalemail;
  final String department;

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
                      AppCalendar(date: date),
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
                                Text(
                                  companyName,
                                  style: TextStyle(
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
                                    child: Text(status),
                                  ),
                                )
                              ],
                            ),
                            Text(
                              department,
                              style: TextStyle(
                                  fontSize: width * 0.045, color: Colors.black),
                            ),
                            Text(
                              approvalemail,
                              style: TextStyle(
                                  fontSize: width * 0.045, color: Colors.black),
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
