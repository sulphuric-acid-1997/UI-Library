import 'package:flutter/material.dart';

import '../../helpers/clippathshadow.dart';
import '../../helpers/ticketclip.dart';
import '../../resources/values_manager.dart';

class PaymentStatus extends StatelessWidget {
  final Status status;
  final String transcationNo;
  final String amountpaid;
  final String bank;

  const PaymentStatus({Key? key, required this.status, required this.transcationNo, required this.amountpaid, required this.bank}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return ClipShadow(
      clipper: TicketClipper(),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 10,
          blurRadius: 100,
          offset: const Offset(0, 0), // changes position of shadow
        ),
      ],
      child: Card(
        margin: const EdgeInsets.all(AppMargin.m20),
        color: Colors.white,
        // elevation: 5.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(AppPadding.p40),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              _getStatusIcon(),
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              Text(
                status == Status.Done
                    ? "Payment Successful!"
                    : "Payment Failed!",
                style: TextStyle(
                        fontSize: width * 0.06, fontWeight: FontWeight.w500)
                    .copyWith(color: Colors.black),
                // TextStyle(
                //   color: Colors.black,
                //   fontWeight: FontWeight.w600,
                //   fontSize: FontSize.s23,
                // ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.01),
              Text(
                "Transaction Number : $transcationNo",
                style: TextStyle(
                        fontSize: width * 0.04, fontWeight: FontWeight.w300)
                    .copyWith(color: Colors.grey),
                // TextStyle(
                //   color: Colors.black54,
                //   fontWeight: FontWeight.w400,
                //   fontSize: FontSize.s14,
                // ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              const Divider(
                color: Colors.grey,
                thickness: 1,
                indent: 0.5,
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              getRow('Amount Paid:', '${amountpaid}(AED)'),
              SizedBox(height: MediaQuery.of(context).size.height * 0.01),
              getRow('Bank:', '${bank}'),
            ],
          ),
        ),
      ),
    );
  }
}

Widget getRow(String title, String subtitle) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(title,
          style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.normal,
                  color: Colors.grey)
              .copyWith(color: Colors.black)
          // getSemiBoldStyle(
          //   color: Colors.black87,
          //   fontSize: FontSize.s16,
          // ),
          ),
      Text(subtitle,
          style: const TextStyle(
              fontSize: 15, fontWeight: FontWeight.normal, color: Colors.grey)),
    ],
  );
}

enum Status { Done, Pending, Fail }

Widget _getStatusIcon({Status status = Status.Done}) {
  if (status == Status.Done) {
    return const Icon(
      Icons.check_circle,
      color: Colors.green,
      size: AppIcon.i60,
    );
  } else if (status == Status.Pending) {
    return const Icon(
      Icons.watch_later,
      color: Colors.yellow,
      size: AppIcon.i60,
    );
  } else if (status == Status.Fail) {
    return const Icon(
      Icons.cancel,
      color: Colors.red,
      size: AppIcon.i60,
    );
  } else {
    return const Icon(
      Icons.error,
      color: Colors.blueAccent,
      size: AppIcon.i60,
    );
  }
}
