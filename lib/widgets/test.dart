import 'package:flutter/cupertino.dart';

class Testwidget extends StatelessWidget {
  Testwidget({Key? key, this.text}) : super(key: key);
  late String? text;
  late bool emoji;

  Testwidget.emoji({Key? key, this.text}) : emoji = true, super(key: key);

  Testwidget.text({Key? key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(text ?? 'hello'),
        if (emoji) Text('emoji '),
      ],
    );
  }
}
