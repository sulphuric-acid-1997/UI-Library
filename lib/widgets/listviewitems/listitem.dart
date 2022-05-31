import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_ui_lib/widgets/listviewitems/notificationitem.dart';
import 'package:flutter_ui_lib/widgets/listviewitems/requestitem.dart';

import '../../datamodels/notifications.dart';

class ListItem extends StatelessWidget {
  ListItem({
    Key? key,
  }) : super(key: key);

  late Function onclick;
  late DateTime date;
  late String companyName;
  late String status;
  late String approvalemail;
  late String department;

  late DateTime? caldate;
  late String? weekday;
  late TextStyle? weekdaystyle;
  late TextStyle? daystyle;

  late TextStyle? monthstyle;
  late NotificationDataModel data;

  late bool notification;
  late bool request;

  late TextStyle? companyNamestyle;
  late TextStyle? approvalemailstyle;
  late TextStyle? departmenttyle;

  ListItem.notification({
    Key? key,
    required this.data,
  })  : notification = true,
        request = false,
        super(key: key);

  ListItem.request({
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
  })  : request = true,
        notification = false,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    if (notification) {
      return NotificationListItem(data: data);
    }

    if (request) {
      print('coming here da');
      return RequestItem(
          onclick: () {},
          date: DateTime.now(),
          companyName: 'company name',
          companyNamestyle: companyNamestyle,
          status: 'status',
          approvalemail: 'approvalemail',
          approvalemailstyle: approvalemailstyle,
          department: 'department',
          weekdaystyle: weekdaystyle,
          monthstyle: monthstyle,
          daystyle: daystyle,
          departmenttyle: departmenttyle);
    }

    return const AutoSizeText('use named construtor please');
  }
}
