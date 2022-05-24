import 'package:flutter/material.dart';

class BlurButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  const BlurButton({Key? key, required this.title, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return TextButton(
      onPressed: () => onPressed,
      child: Text(
        title,
        style: TextStyle(fontSize: width * 0.045, color: Colors.black)
            .copyWith(color: Colors.black),
      ),
      style: ElevatedButton.styleFrom(
        primary: const Color.fromARGB(255, 225, 225, 225).withOpacity(0.4),
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        textStyle: TextStyle(fontSize: width * 0.045, color: Colors.black),
      ),
    );
  }
}
