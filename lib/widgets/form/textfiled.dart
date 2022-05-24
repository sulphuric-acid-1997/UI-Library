import 'package:flutter/material.dart';

import 'helpers/decorators.dart';

class TextField1 extends StatelessWidget {
  TextEditingController? controller;
  TextField1({Key? key, this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: getInputDecoration(),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter some text';
        }
        return null;
      },
    );
  }
}
