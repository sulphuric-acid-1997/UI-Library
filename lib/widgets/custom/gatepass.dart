import 'package:flutter/material.dart';
import 'package:flutter_ui_lib/resources/font_manager.dart';
import 'package:flutter_ui_lib/widgets/custom/app_calendar.dart';

import '../../resources/values_manager.dart';

class GatePassTicket extends StatelessWidget {
  final String imageurl;
  final String name;
  final TextStyle? namestyle;
  final String company;
  final TextStyle? companystyle;
  final String subtext;
  final TextStyle? subtextstyle;
  final DateTime? date;
  final String? weekday;
  final TextStyle? weekdaystyle;
  final TextStyle? daystyle;

  final TextStyle? monthstyle;

  const GatePassTicket({
    Key? key,
    required this.imageurl,
    required this.name,
    this.namestyle,
    required this.company,
    this.companystyle,
    this.subtext = 'Ajman, United Arab Emirates',
    this.subtextstyle,
    this.date,
    this.weekday,
    this.weekdaystyle,
    this.daystyle,
    this.monthstyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Stack(
      alignment: Alignment.topCenter,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: AppPadding.p10),
          child: Container(
            margin: EdgeInsets.all(width * 0.015),
            child: Card(
              margin: EdgeInsets.all(width * 0.05),
              color: Colors.white,
              elevation: AppSize.s5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(AppSize.s15),
              ),
              child: Padding(
                padding: EdgeInsets.all(width * 0.06),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                    Container(
                      width: width * 0.25,
                      height: width * 0.25,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        image: DecorationImage(
                          image: NetworkImage(imageurl),
                          fit: BoxFit.cover,
                        ),
                        borderRadius:
                            BorderRadius.all(Radius.circular(width * 0.125)),
                        border: Border.all(
                          color: Colors.black26,
                          width: 2.0,
                        ),
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                    Text(
                      name,
                      style: namestyle ??
                          TextStyle(
                              fontSize: width * 0.045, color: Colors.black),
                      // TextStyle(
                      //   color: Colors.black,
                      //   fontWeight: FontWeight.w400,
                      //   fontSize: FontSize.s20,
                      // ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                    Text(
                      "Visitor Pass",
                      style: TextStyle(
                        fontSize: width * 0.07,
                        fontStyle: FontStyle.normal,
                      ).copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                      // TextStyle(
                      //   color: Colors.black,
                      //   fontWeight: FontWeight.w600,
                      //   fontSize: FontSize.s29,
                      // ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                    const Divider(
                      color: Colors.grey,
                      thickness: 1,
                      indent: 0.5,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(AppPadding.p5),
                          child: AppCalendar(
                            date: date,
                            weekday: weekday,
                            weekdaystyle: weekdaystyle,
                            daystyle: daystyle,
                            monthstyle: monthstyle,
                          ),
                        ),
                        SizedBox(
                          width: width * 0.05,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(company,
                                style: companystyle ??
                                    TextStyle(
                                            fontSize: width * 0.05,
                                            fontWeight: FontWeight.w300)
                                        .copyWith(
                                            fontWeight: FontWeightManager.bold,
                                            color: Colors.black)
                                // TextStyle(
                                //   color: Colors.black,
                                //   fontWeight: FontWeight.w600,
                                //   fontSize: FontSize.s18,
                                // ),
                                ),
                            SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.01),
                            Text(subtext,
                                style: subtextstyle ??
                                    TextStyle(
                                        fontSize: width * 0.04,
                                        fontWeight: FontWeight.w300)
                                // TextStyle(
                                //   color: Colors.black,
                                //   fontWeight: FontWeight.w400,
                                //   fontSize: FontSize.s16,
                                // ),
                                ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                  ],
                ),
              ),
            ),
          ),
        ),
        Container(
          width: width * 0.2,
          height: width * 0.2,
          decoration: const ShapeDecoration(
            shape: CircleBorder(),
            color: Colors.transparent,
          ),
          child: Padding(
            padding: const EdgeInsets.all(1),
            child: Icon(
              Icons.check_circle,
              color: Colors.green,
              size: width * 0.18,
            ),
          ),
        )
      ],
    );
  }
}
