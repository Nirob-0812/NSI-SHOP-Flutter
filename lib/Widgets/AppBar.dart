import 'package:flutter/material.dart';
class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: IconThemeData(color: Colors.black),
      centerTitle: true,
      elevation: 0,
      backgroundColor: Colors.transparent,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "N",
            style: TextStyle(
                color: Colors.indigo,
                fontWeight: FontWeight.bold,
                fontSize: 30),
          ),
          Text(
            "S",
            style: TextStyle(
                color: Colors.deepOrange,
                fontWeight: FontWeight.bold,
                fontSize: 30),
          ),
          Text(
            "I  ",
            style: TextStyle(
                color: Colors.brown,
                fontWeight: FontWeight.bold,
                fontSize: 30),
          ),
          Text(
            "S",
            style: TextStyle(
                color: Colors.indigo,
                fontWeight: FontWeight.bold,
                fontSize: 30),
          ),
          Text(
            "H",
            style: TextStyle(
                color: Colors.deepOrange,
                fontWeight: FontWeight.bold,
                fontSize: 30),
          ),
          Text(
            "O",
            style: TextStyle(
                color: Colors.brown,
                fontWeight: FontWeight.bold,
                fontSize: 30),
          ),
          Text(
            "P",
            style: TextStyle(
                color: Colors.orange,
                fontWeight: FontWeight.bold,
                fontSize: 30),
          ),
        ],
      ),
      actions: [
        Icon(
          Icons.search,
          size: 30,
        ),
        SizedBox(
          width: 15,
        )
      ],
    );
  }
}
