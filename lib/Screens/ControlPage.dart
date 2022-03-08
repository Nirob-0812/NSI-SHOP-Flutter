import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hw1/Screens/FavoritePage.dart';
import 'package:hw1/Screens/HomePage.dart';
import 'package:hw1/Screens/AllCategory.dart';
import 'package:hw1/Screens/UserPage.dart';

class ControlPage extends StatefulWidget {
  const ControlPage({Key? key}) : super(key: key);
  static const route="ContolPage";
  @override
  State<ControlPage> createState() => _ControlPageState();
}

class _ControlPageState extends State<ControlPage> {
  List<Widget> screens = [HomePage(), FavoritePage(),  AllCategory(), UserPage()];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = HomePage();
  int currenTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        bucket: bucket,
        child: currentScreen,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.indigo,
        onPressed: () {},
        child: Badge(
            position: BadgePosition.topEnd(),
            badgeContent: Text(
              "0",
              style: TextStyle(color: Colors.white),
            ),
            child: Icon(Icons.shopping_cart_sharp)),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    width: 10,
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = HomePage();
                        currenTab = 0;
                      });
                    },
                    child: Icon(
                      Icons.home,
                      color: currenTab == 0 ? Colors.indigo : Colors.grey,
                    ),
                  ),
                  SizedBox(width: 25),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = FavoritePage();
                        currenTab = 1;
                      });
                    },
                    child: Icon(
                      Icons.favorite,
                      color: currenTab == 1 ? Colors.indigo : Colors.grey,
                    ),
                  ),
                ],
              ),
              Row(
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = AllCategory();
                        currenTab = 2;
                      });
                    },
                    child: Icon(
                      FontAwesomeIcons.clipboardList,
                      color: currenTab == 2 ? Colors.indigo : Colors.grey,
                    ),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = UserPage();
                        currenTab = 3;
                      });
                    },
                    child: Icon(
                      FontAwesomeIcons.user,
                      color: currenTab == 3 ? Colors.indigo : Colors.grey,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
