import 'package:flutter/material.dart';
import 'package:hw1/Widgets/Data.dart';
import 'package:hw1/Widgets/DataModel.dart';
import 'package:hw1/Widgets/DetailsData.dart';
import 'package:provider/provider.dart';

class HomePageData extends StatelessWidget {
  const HomePageData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _data = Provider.of<DataModel>(context);
    return FutureBuilder(
      future: _data.getDataList(),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.hasData) {
          return ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: snapshot.data.length,
              itemBuilder: (context, int index) {
                final Data _list = snapshot.data[index];
                return InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, DetailPage.route,
                        arguments: _list.id);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.42,
                      width: MediaQuery.of(context).size.width * 0.60,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          boxShadow: [
                            BoxShadow(
                                offset: Offset(1, 5),
                                color: Colors.grey,
                                spreadRadius: 1,
                                blurRadius: 8)
                          ],
                          shape: BoxShape.rectangle),
                      child: Stack(children: [
                        Column(
                          children: [
                            Flexible(
                                flex: 2,
                                child: GridTile(
                                  child: ClipPath(
                                      child: Image.network(_list.image)),
                                  footer: Container(
                                    height: 70,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        ElevatedButton(
                                            onPressed: () {},
                                            style: ElevatedButton.styleFrom(
                                              minimumSize: Size(100, 50),
                                              primary: Colors
                                                  .lightBlueAccent.shade100,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10),
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
                                                      color: Colors.indigo,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                )
                                              ],
                                            )),
                                        ElevatedButton(
                                          onPressed: () {},
                                          style: ElevatedButton.styleFrom(
                                            minimumSize: Size(50, 50),
                                            primary: Colors.pinkAccent.shade100,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                          ),
                                          child: Icon(
                                            Icons.favorite_outline,
                                            size: 30,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                )),
                            Container(
                              alignment: Alignment.center,
                              height: 40,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 8),
                                child: Text(
                                  _list.title,
                                  style: TextStyle(fontWeight: FontWeight.w500),
                                  maxLines: 1,
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "\$" +
                                      (_list.price - (_list.price * (30 / 100)))
                                          .toStringAsFixed(2),
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blue),
                                ),
                                Text("    "),
                                Text(
                                  "\$" + _list.price.toString(),
                                  style: TextStyle(
                                    decoration: TextDecoration.lineThrough,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            )
                          ],
                        ),
                        Positioned(
                            top: 30,
                            left: 0,
                            child: Container(
                              alignment: Alignment.center,
                              height: 30,
                              width: 40,
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(15),
                                      bottomRight: Radius.circular(15))),
                              child: Text(
                                "-30\%",
                                style: TextStyle(color: Colors.white),
                              ),
                            ))
                      ]),
                    ),
                  ),
                );
              });
        }
        return Center(child: CircularProgressIndicator());
      },
    );
  }
}
