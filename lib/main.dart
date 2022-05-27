import 'package:flutter/material.dart';
import 'package:flutter_ui_lib/pages/overview_page.dart';
import 'package:flutter_ui_lib/sampledata/data.dart';
import 'package:flutter_ui_lib/widgets/form/buttons.dart';
import 'package:flutter_ui_lib/widgets/listviewitems/listitem.dart';
import 'package:flutter_ui_lib/widgets/test.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter UI Library',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter UI Library'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var space = const SizedBox(height: 20.0);
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ListItem.notification(data: data[0]),
              ListItem.request(
                  onclick: () {},
                  date: DateTime.now(),
                  companyName: 'companyName',
                  status: 'status',
                  approvalemail: 'approvalemail',
                  department: 'department'),

              const Button(
                title: 'test button',
              ),
              Testwidget.emoji(
                text: 'hello',
              ),
              // Testwidget.text(text:'hello'),
              // ElevatedButton(
              //     onPressed: () {
              //       Navigator.push(
              //         context,
              //         MaterialPageRoute(
              //             builder: (context) => const CustomAppBarPage()),
              //       );
              //     },
              //     child: const Text('AppBar')),
              // space,
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const OverviewPage()),
                    );
                  },
                  child: const Text('OverviewTile'))
            ],
          ),
        ));
  }
}
