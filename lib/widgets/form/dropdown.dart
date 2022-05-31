import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import 'helpers/decorators.dart';

class Dropdown1 extends StatelessWidget {
  String? initvalue;
  String? hinttext;
  List<String> options;
  TextEditingController? selectvalue;
  Dropdown1(
      {Key? key,
      this.initvalue,
      this.hinttext,
      required this.options,
      this.selectvalue})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (initvalue != null && selectvalue != null) {
      selectvalue!.text = initvalue!;
    }
    return DropdownButtonFormField<String>(
      isDense: true,
      isExpanded: true,
      value: initvalue,
      icon: const Icon(Icons.keyboard_arrow_down_outlined),
      iconSize: 30,
      elevation: 16,
      style: const TextStyle(color: Colors.black, fontSize: 17),
      decoration: getInputDecoration(),
      onChanged: (String? newValue) {
        selectvalue!.text = newValue!;
        // setState(() {
        //   dropdownValue = newValue!;
        // });
      },
      validator: (value) => value == null ? 'field required' : null,
      items: options.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: AutoSizeText(value),
        );
      }).toList(),
    );
  }
}
