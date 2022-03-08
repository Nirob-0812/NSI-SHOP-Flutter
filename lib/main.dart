import 'package:flutter/material.dart';
import 'package:hw1/Screens/ControlPage.dart';
import 'package:hw1/Screens/HomePage.dart';
import 'package:hw1/Widgets/DataModel.dart';
import 'package:hw1/Widgets/DetailsData.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => DataModel(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: ControlPage.route,
        routes: {
          ControlPage.route: (context) => ControlPage(),
          DetailPage.route: (context) => DetailPage()
        },
      ),
    );
  }
}
