import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class VehicleDetails extends StatelessWidget {
  final String vehicleNumberPlate;
  final TextStyle? vehicleNumberPlatestyle;
  final String ownername;
  final TextStyle? ownernamestyle;

  final String registeredDate;
  final TextStyle? registeredDatestyle;

  final String vechilemodel;
  final TextStyle? vechilemodelstyle;
  final TextStyle? headingstyle;

  const VehicleDetails({
    Key? key,
    required this.vehicleNumberPlate,
    required this.ownername,
    required this.registeredDate,
    required this.vechilemodel,
    this.vehicleNumberPlatestyle,
    this.ownernamestyle,
    this.registeredDatestyle,
    this.vechilemodelstyle,
    this.headingstyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double unitHeightValue = MediaQuery.of(context).size.height * 0.01;
    double width = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 3 * unitHeightValue),
      padding: EdgeInsets.symmetric(vertical: 4 * unitHeightValue),
      decoration:
          const BoxDecoration(color: Color.fromARGB(255, 225, 225, 225)),
      child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const SizedBox(width: 70, child: Icon(Icons.car_rental)),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AutoSizeText(vehicleNumberPlate,
                style: vehicleNumberPlatestyle ??
                    TextStyle(fontSize: width * 0.045, color: Colors.black)
                        .copyWith(
                            color: Colors.black, fontWeight: FontWeight.bold)),
            AutoSizeText('Owned by $ownername',
                style: ownernamestyle ??
                    TextStyle(
                            fontSize: width * 0.04, fontWeight: FontWeight.w300)
                        .copyWith(color: Colors.black, height: 1.7)),
            //  TextStyle(
            //     fontSize: 1.8 * unitHeightValue,
            //     height: 1.7)),
            AutoSizeText('Registered Date',
                style: headingstyle ??
                    TextStyle(
                            fontSize: width * 0.035,
                            fontWeight: FontWeight.normal)
                        .copyWith(color: Colors.black, height: 3.5)),
            AutoSizeText(registeredDate,
                style: registeredDatestyle ??
                    TextStyle(fontSize: width * 0.045, color: Colors.black)
                        .copyWith(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            height: 1.5)),
            AutoSizeText('Vehicle model',
                style: headingstyle ??
                    TextStyle(
                            fontSize: width * 0.035,
                            fontWeight: FontWeight.normal)
                        .copyWith(color: Colors.black, height: 3.5)),
            AutoSizeText(vechilemodel,
                style: vechilemodelstyle ??
                    TextStyle(fontSize: width * 0.045, color: Colors.black)
                        .copyWith(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            height: 1.5)),
          ],
        )
      ]),
    );
  }
}
