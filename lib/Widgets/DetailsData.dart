import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hw1/Widgets/AppBar.dart';
import 'package:hw1/Widgets/DataModel.dart';
import 'package:provider/provider.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);
  static const route = "DetailsPage";

  @override
  Widget build(BuildContext context) {
    final dataId = ModalRoute.of(context)!.settings.arguments as int;
    final singleData =
        Provider.of<DataModel>(context).getSingleDataList(dataId);
    return Scaffold(
      appBar: AppBar(
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
            Icons.favorite_outline,
            size: 30,
          ),
          SizedBox(
            width: 15,
          )
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Container(
            alignment: Alignment.center,
            height: 300,
            child: Image.network(singleData.image),
          ),
          Container(
            height: MediaQuery.of(context).size.height * .42,
            decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20, left: 20),
                      child: SizedBox(
                        width: 200,
                        child: Text(
                          singleData.title,
                          maxLines: 1,
                          softWrap: true,
                          overflow: TextOverflow.clip,
                          textWidthBasis: TextWidthBasis.parent,
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, right: 20),
                      child: Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.yellow.shade700,
                          ),
                          Text("4.5")
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    singleData.description,
                    maxLines: 3,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Container(
                    height: 80,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "Size: ",
                          style: TextStyle(fontSize: 20),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 35,
                          width: 50,
                          decoration: BoxDecoration(
                              color: Colors.blueAccent,
                              borderRadius: BorderRadius.circular(15)),
                          child: Text(
                            "US 6",
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 35,
                          width: 50,
                          decoration: BoxDecoration(
                              color: Colors.grey.shade400,
                              borderRadius: BorderRadius.circular(15)),
                          child: Text(
                            "US 7",
                            style: TextStyle(fontSize: 15, color: Colors.black),
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 35,
                          width: 50,
                          decoration: BoxDecoration(
                              color: Colors.grey.shade400,
                              borderRadius: BorderRadius.circular(15)),
                          child: Text(
                            "US 8",
                            style: TextStyle(fontSize: 15, color: Colors.black),
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 35,
                          width: 50,
                          decoration: BoxDecoration(
                              color: Colors.grey.shade400,
                              borderRadius: BorderRadius.circular(15)),
                          child: Text(
                            "US 9",
                            style: TextStyle(fontSize: 15, color: Colors.black),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Container(
                    child: Row(
                      children: [
                        Text(
                          "Color: ",
                          style: TextStyle(fontSize: 20),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Container(
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(20)),
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Container(
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(20)),
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Container(
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(20)),
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Container(
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(20)),
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Container(
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                              color: Colors.orange,
                              borderRadius: BorderRadius.circular(20)),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15,right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "\$" + singleData.price.toString(),
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(100, 50),
                      primary: Colors.lightBlueAccent.shade100,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.shopping_cart_sharp,
                          color: Colors.indigo,
                        ),
                        Text(
                          "  Add To Cart",
                          style: TextStyle(
                              color: Colors.indigo, fontWeight: FontWeight.bold),
                        )
                      ],
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
