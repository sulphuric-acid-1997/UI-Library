import 'package:flutter/material.dart';

class VehicleDetails extends StatelessWidget {
  final String vehicleNumberPlate;
  final String ownername;
  final String registeredDate;
  final String vechilemodel;
  const VehicleDetails({
    Key? key,
    required this.vehicleNumberPlate,
    required this.ownername,
    required this.registeredDate,
    required this.vechilemodel,
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
            Text(vehicleNumberPlate,
                style: TextStyle(fontSize: width * 0.045, color: Colors.black)
                    .copyWith(
                        color: Colors.black, fontWeight: FontWeight.bold)),
            Text('Owned by $ownername',
                style: TextStyle(
                        fontSize: width * 0.04, fontWeight: FontWeight.w300)
                    .copyWith(color: Colors.black, height: 1.7)),
            //  TextStyle(
            //     fontSize: 1.8 * unitHeightValue,
            //     height: 1.7)),
            Text('Registered Date',
                style: TextStyle(
                        fontSize: width * 0.035, fontWeight: FontWeight.normal)
                    .copyWith(color: Colors.black, height: 3.5)),
            Text(registeredDate,
                style: TextStyle(fontSize: width * 0.045, color: Colors.black)
                    .copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        height: 1.5)),
            Text('Vehicle model',
                style: TextStyle(
                        fontSize: width * 0.035, fontWeight: FontWeight.normal)
                    .copyWith(color: Colors.black, height: 3.5)),
            Text(vechilemodel,
                style: TextStyle(fontSize: width * 0.045, color: Colors.black)
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
