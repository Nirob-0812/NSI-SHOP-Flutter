import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hw1/Screens/FavoritePage.dart';
import 'package:hw1/Widgets/AppBar.dart';
import 'package:hw1/Widgets/Data.dart';
import 'package:hw1/Widgets/DataModel.dart';
import 'package:hw1/Widgets/DisplayData.dart';
import 'package:hw1/Widgets/HomePageData.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  static const route = "Home Page";

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10, left: 20),
                    child: Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Daily Deals",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 10,
                    ),
                    child: Row(
                      children: [
                        Container(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Sort By",
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.grey,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(FontAwesomeIcons.caretDown))
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                height: 400,
                child: HomePageData(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
