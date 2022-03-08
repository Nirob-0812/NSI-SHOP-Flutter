import 'package:flutter/material.dart';
import 'package:hw1/Widgets/DataModel.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "My Cart",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Center(child: Text("Favorite Page"),),
    );
  }
}
