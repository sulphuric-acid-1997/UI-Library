import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final String title;
  const Header({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      width: MediaQuery.of(context).size.width,
      child: Stack(children: <Widget>[
        Opacity(
          opacity: 0.5,
          child: Image.network(
            'https://cdn.pixabay.com/photo/2018/03/10/12/00/teamwork-3213924__480.jpg',
            fit: BoxFit.fitWidth,
            width: MediaQuery.of(context).size.width,
          ),
        ),
        Center(
            child: Text(title,
                style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * 0.06,
                        fontWeight: FontWeight.w500)
                    .copyWith(color: Colors.black))),
      ]),
    );
  }
}
