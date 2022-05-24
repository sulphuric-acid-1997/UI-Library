import 'package:flutter/material.dart';

class Conttent extends StatefulWidget {
  final String title;
  final TextStyle? titlestyle;
  final String body;
  final TextStyle? bodystyle;
  final String? imgurl;
  const Conttent({
    Key? key,
    required this.title,
    required this.body,
    this.titlestyle,
    this.bodystyle,
    this.imgurl,
  }) : super(key: key);

  @override
  State<Conttent> createState() => _ConttentState();
}

class _ConttentState extends State<Conttent> {
  late bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    String initbody = widget.body.substring(0, 200);
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 50, 20, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.title,
            style: widget.titlestyle ??
                const TextStyle(fontSize: 20, fontWeight: FontWeight.w500)
                    .copyWith(color: Colors.black),
          ),
          widget.imgurl == null
              ? const SizedBox()
              : Center(
                  child: Image.network(
                      'https://img.freepik.com/free-vector/business-meeting-illustration-concept-people-presentation-conference-business-workflow-planning-strategy-vector-illustration-flat-style_7737-2358.jpg'),
                ),
          const SizedBox(height: 20),
          !_isExpanded
              ? Text(
                  initbody,
                  style: widget.bodystyle ??
                      const TextStyle(fontSize: 20, color: Colors.black),
                )
              : Text(
                  widget.body,
                  style: widget.bodystyle ??
                      const TextStyle(fontSize: 20, color: Colors.black),
                ),
          const SizedBox(height: 20),
          !_isExpanded
              ? InkWell(
                  onTap: () => setState(() => _isExpanded = !_isExpanded),
                  child: Text(
                    'Read More',
                    style: const TextStyle(
                            fontSize: 40, fontWeight: FontWeight.w300)
                        .copyWith(
                      color: Colors.black,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                )
              : InkWell(
                  onTap: () => setState(() => _isExpanded = !_isExpanded),
                  child: Text(
                    'Read Less',
                    style: const TextStyle(
                            fontSize: 40, fontWeight: FontWeight.w300)
                        .copyWith(
                      color: Colors.black,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
        ],
      ),
    );
  }
}
