
import 'package:flutter/material.dart';
import 'package:flutter_ui_lib/widgets/textdisplayers/overview_tile.dart';

class OverviewPage extends StatelessWidget {
  const OverviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var space = const SizedBox(height: 10);
    return Scaffold(
      appBar: AppBar(title: const Text('Overview Tile'),),
      body: Center(
        child: Column(
          children: [
            const OverviewTile(title: '10 customers in queue',
                subTitle: '3 customers requesting cash withdrawal today'),
            space,
            const OverviewTile(title: 'Keep cash of \$15,000',
                subTitle: '3 customers requesting cash withdrawal today'),
            space,
            const OverviewTile(title: 'Prepare for a busy day',
                subTitle: '3 customers requesting cash withdrawal today')
          ],
        ),
      ),
    );
  }
}
