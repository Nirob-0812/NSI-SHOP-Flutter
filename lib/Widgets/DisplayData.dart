import 'package:flutter/material.dart';
import 'package:hw1/Widgets/Data.dart';
import 'package:hw1/Widgets/DetailsData.dart';
import 'DataModel.dart';
import 'package:provider/provider.dart';

class DisplayData extends StatelessWidget {
  const DisplayData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _data = Provider.of<DataModel>(context);
    return FutureBuilder(
      future: _data.getDataList(),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.hasData) {
          return GridView.builder(
              scrollDirection: Axis.vertical,
              itemCount: snapshot.data.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisSpacing: 5, mainAxisSpacing: 5, crossAxisCount: 2),
              itemBuilder: (context, int index) {
                final Data _list = snapshot.data[index];
                return InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, DetailPage.route,arguments: _list.id);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 300,
                      width: 250,
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
                      child: Column(
                        children: [
                          Flexible(
                              child: Image(
                            image: NetworkImage(
                              _list.image,
                            ),
                            height: 100,
                            width: 100,
                          )),
                          Center(
                              child: Text(
                            _list.title,
                            maxLines: 1,
                          )),
                          Text(
                            "\$" + _list.price.toString(),
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.blue),
                          ),
                        ],
                      ),
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
