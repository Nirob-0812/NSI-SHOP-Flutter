import 'dart:convert';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:convert';

Data productFromJson(String str) => Data.fromJson(json.decode(str));

String prodectToJson(Data data) => json.encode(data.toJson());

class Data {
  Data({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.category,
    required this.image,
  });

  int id;
  String title;
  double price;
  String description;
  String category;
  String image;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    id: json["id"],
    title: json["title"],
    price: json["price"].toDouble(),
    description: json["description"],
    category: json["category"],
    image: json["image"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "title": title,
    "price": price,
    "description": description,
    "category": category,
    "image": image,
  };
}

// Data dataFromJson(String str) => Data.fromJson(json.decode(str));
//
// String dataToJson(Data data) => json.encode(data.toJson());
// class Data {
//   int id;
//   String title;
//   double price;
//   String description;
//   String category;
//   String image;
//
//   Data({
//     required this.id,
//     required this.title,
//     required this.price,
//     required this.description,
//     required this.category,
//     required this.image,
//
//   });
//
//   factory Data.fromJson(Map<String, dynamic> json) => Data(
//     id : json['id'],
//     title : json['title'],
//     price : json["price"],
//     description: json['description'],
//     category: json['category'],
//     image: json['image'],
//   );
//
//   Map<String, dynamic> toJson() =>{
//     'id': id,
//     'title': title,
//     'price': price,
//     'description': description,
//     'category': category,
//     'image': image,
//   };
// }

