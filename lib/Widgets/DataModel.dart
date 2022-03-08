import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:hw1/Widgets/Data.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;

class DataModel with ChangeNotifier{

  final List<Data> _list=[];
  List<Data> get list=> _list;
  Future<List<Data>> getDataList() async {
    final url = Uri.parse("https://fakestoreapi.com/products");
    final response = await http.get(url);
    List body = json.decode(response.body);
    for (var data in body) {
      _list.add(Data.fromJson(data));
    }
    return _list;
  }
  Data getSingleDataList(int id){
    return _list.firstWhere((element) => element.id== id);
  }
}