import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_lib/sampledata/data.dart';
import 'package:flutter_ui_lib/widgets/custom/app_calendar.dart';
import 'package:flutter_ui_lib/widgets/custom/gatepass.dart';
import 'package:flutter_ui_lib/widgets/custom/numberplate.dart';
import 'package:flutter_ui_lib/widgets/custom/paymentstatus.dart';
import 'package:flutter_ui_lib/widgets/custom/vehiclidetails.dart';
import 'package:flutter_ui_lib/widgets/footer/footer.dart';
import 'package:flutter_ui_lib/widgets/form/blurbutton.dart';
import 'package:flutter_ui_lib/widgets/form/button.dart';
import 'package:flutter_ui_lib/widgets/form/dropdown.dart';
import 'package:flutter_ui_lib/widgets/form/textfiled.dart';
import 'package:flutter_ui_lib/widgets/listviewitems/listitem.dart';
import 'package:flutter_ui_lib/widgets/textdisplayers/bigheader.dart';
import 'package:flutter_ui_lib/widgets/textdisplayers/captionbgblur.dart';
import 'package:flutter_ui_lib/widgets/textdisplayers/content.dart';
import 'package:flutter_ui_lib/widgets/textdisplayers/header.dart';
import 'package:flutter_ui_lib/widgets/textdisplayers/overview_tile.dart';
import 'package:widget_with_codeview/widget_with_codeview.dart';

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
          backgroundColor: const Color(0xFF242526),
          foregroundColor: Colors.white,
          centerTitle: true,
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: AutoSizeText(widget.title),
        ),
        body: ListView(
          children: <Widget>[
            const WidgetWithCodeView(
              // height: 500,
              title: 'Vistor pass',
              description: 'Vistor pass',
              child: SizedBox(
                height: 600,
                width: 500,
                child: GatePassTicket(
                  expand: 2,
                  height: 500,
                  daystyle: TextStyle(fontSize: 20),
                  monthstyle: TextStyle(fontSize: 20),
                  weekdaystyle: TextStyle(fontSize: 20),
                  company: 'Anteriorsoft Pvt Ltd',
                  companystyle: TextStyle(fontSize: 20),
                  imageurl:
                      'https://upload.wikimedia.org/wikipedia/en/7/7d/Lenna_%28test_image%29.png',
                  subtext: 'Ajman, United Arab Emirates',
                  subtextstyle: TextStyle(fontSize: 15),
                  name: 'Abulebbeh Aleks',
                ),
              ),
              sourceFilePath: 'sample/vistorpass.dart',
            ),
            const WidgetWithCodeView(
              title: 'App Calendar',
              child: AppCalendar(
                // date: DateTime.now(),
                daystyle: TextStyle(fontSize: 20),
                monthstyle: TextStyle(fontSize: 20),
                weekdaystyle: TextStyle(fontSize: 20),
              ),
              sourceFilePath: 'sample/numberplate.dart',
            ),
            const WidgetWithCodeView(
              title: 'Number Plate',
              child: SizedBox(
                height: 60,
                width: 500,
                child: NumberPlate(
                  place: 'Dubai',
                  placestyle: TextStyle(
                    fontSize: 20,
                  ),
                  series: 'A',
                  seriesstyle: TextStyle(
                    fontSize: 20,
                  ),
                  number: '10234',
                  numberstyle: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              sourceFilePath: 'sample/numberplate.dart',
            ),
            const WidgetWithCodeView(
              title: 'Payment Status',
              height: 500,
              child: SizedBox(
                height: 350,
                width: 500,
                child: PaymentStatus(
                  status: Status.Done,
                  amountpaid: '50',
                  bank: 'Mellat Bank',
                  iconsize: 50,
                  titlestyle: TextStyle(color: Colors.black, fontSize: 20),
                  headingstyle: TextStyle(color: Colors.black, fontSize: 20),
                  subtitlestyle: TextStyle(color: Colors.black, fontSize: 20),
                  transcationstyle:
                      TextStyle(color: Colors.black, fontSize: 20),
                  transcationNo: '1232415435345',
                ),
              ),
              sourceFilePath: 'sample/notificationlistitem.dart',
            ),
            const WidgetWithCodeView(
              title: 'Vehicle Details',
              child: SizedBox(
                height: 250,
                width: 400,
                child: VehicleDetails(
                  ownername: 'abul',
                  ownernamestyle: TextStyle(color: Colors.black, fontSize: 20),
                  vehicleNumberPlate: 'Dubai A 2034',
                  vehicleNumberPlatestyle:
                      TextStyle(color: Colors.black, fontSize: 20),
                  headingstyle: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                  vechilemodel: 'Tayota hillux 2021.\nAED 79,200 - 167,000.',
                  vechilemodelstyle:
                      TextStyle(color: Colors.black, fontSize: 20),
                  registeredDate: '15-DEC-2021',
                  registeredDatestyle:
                      TextStyle(color: Colors.black, fontSize: 20),
                ),
              ),
              sourceFilePath: 'sample/notificationlistitem.dart',
            ),
            WidgetWithCodeView(
              title: 'Input Text Fields',
              child: SizedBox(
                height: 200,
                width: 500,
                child: TextField1(),
              ),
              sourceFilePath: 'sample/notificationlistitem.dart',
            ),
            WidgetWithCodeView(
              title: 'Drop down',
              child: SizedBox(
                height: 200,
                width: 500,
                child: Dropdown1(
                  options: const ['one', 'two'],
                ),
              ),
              sourceFilePath: 'sample/notificationlistitem.dart',
            ),
            const WidgetWithCodeView(
              title: 'Button',
              child: Button1(
                size: Size(300, 30),
                title: 'title',
              ),
              sourceFilePath: 'sample/notificationlistitem.dart',
            ),
            WidgetWithCodeView(
              title: 'Blur Button',
              child: SizedBox(
                height: 200,
                width: 500,
                child: BlurButton(
                  onPressed: () {},
                  title: 'title',
                ),
              ),
              sourceFilePath: 'sample/notificationlistitem.dart',
            ),
            WidgetWithCodeView(
              title: 'Footer',
              child: SizedBox(
                height: 50,
                width: 500,
                child: Footer(
                  height: 50,
                  widgets: [
                    FooterItem(
                      title: "About us",
                      onclick: () {},
                    ),
                    FooterItem(
                      title: 'Terms & Conditions',
                      showline: true,
                      onclick: () {},
                    )
                  ],
                ),
              ),
              sourceFilePath: 'sample/notificationlistitem.dart',
            ),
            const WidgetWithCodeView(
              title: 'Overview Tile',
              child: SizedBox(
                height: 200,
                width: 500,
                child: OverviewTile(
                  subTitle: 'subtitle',
                  subTitleColor: Colors.white,
                  title: 'title',
                  titleColor: Colors.white,
                ),
              ),
              sourceFilePath: 'sample/overViewTile.dart',
            ),
            const WidgetWithCodeView(
              title: 'Header',
              child: SizedBox(
                height: 200,
                width: 500,
                child: Header(
                  title: 'title',
                ),
              ),
              sourceFilePath: 'sample/header.dart',
            ),
            const WidgetWithCodeView(
              title: 'Content displayer',
              child: SizedBox(
                width: 500,

                child: Conttent(
                  body:
                      'body must be long enough to show the text in small and large screen, so that the text is not cut off in small screen, repeact : body must be long enough to show the text in small and large screen, so that the text is not cut off in small screen',
                  bodystyle: TextStyle(fontSize: 20, color: Colors.white),
                  readmorecolor: Colors.white,
                  title: 'title',
                  titlestyle: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),

              sourceFilePath: 'sample/contentDisplayer.dart',
              // codeLinkPrefix: 'https://google.com?q=',
            ),
            const WidgetWithCodeView(
              title: 'Caption with Blur Background',
              child: SizedBox(
                height: 200,
                width: 500,
                child: CaptionBgblur(),
              ),
              sourceFilePath: 'sample/captionBgBlur.dart',
              // codeLinkPrefix: 'https://google.com?q=',
            ),
            const WidgetWithCodeView(
              title: 'Big Header',
              child: SizedBox(
                height: 200,
                width: 500,
                child: BigHeader(
                  title: 'Widget With Code View',
                  titlestyle: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ),
              sourceFilePath: 'sample/bigHeader.dart',
              // codeLinkPrefix: 'https://google.com?q=',
            ),

            WidgetWithCodeView(
              title: 'Notification List Item',
              child: SizedBox(
                  width: 450, child: ListItem.notification(data: data[0])),
              sourceFilePath: 'sample/notificationlistitem.dart',
              // codeLinkPrefix: 'https://google.com?q=',
            ),
            WidgetWithCodeView(
              title: 'Request List Item',
              child: SizedBox(
                width: 450,
                child: ListItem.request(
                  onclick: () {},
                  date: DateTime.now(),
                  weekdaystyle:
                      const TextStyle(color: Colors.black, fontSize: 20),
                  daystyle: const TextStyle(color: Colors.black, fontSize: 20),
                  monthstyle:
                      const TextStyle(color: Colors.black, fontSize: 20),
                  companyName: 'companyName',
                  companyNamestyle:
                      const TextStyle(color: Colors.black, fontSize: 30),
                  status: 'status',
                  approvalemailstyle:
                      const TextStyle(color: Colors.black, fontSize: 30),
                  approvalemail: 'approvalemail',
                  department: 'department',
                  departmenttyle:
                      const TextStyle(color: Colors.black, fontSize: 30),
                ),
              ),
              sourceFilePath: 'sample/requestlistiem.dart',
              // codeLinkPrefix: 'https://google.com?q=',
            ),
          ],
        ));
  }
}
