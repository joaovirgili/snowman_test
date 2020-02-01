// To parse this JSON data, do
//
//     final placeItemModel = placeItemModelFromJson(jsonString);

import 'dart:convert';

PlaceItemModel placeItemModelFromJson(String str) => PlaceItemModel.fromJson(json.decode(str));

String placeItemModelToJson(PlaceItemModel data) => json.encode(data.toJson());

class PlaceItemModel {
    String name;
    String location;
    String urlImage;

    PlaceItemModel({
        this.name,
        this.location,
        this.urlImage,
    });

    factory PlaceItemModel.fromJson(Map<String, dynamic> json) => PlaceItemModel(
        name: json["name"],
        location: json["location"],
        urlImage: json["urlImage"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "location": location,
        "urlImage": urlImage,
    };
}
