// To parse this JSON data, do
//
//     final productModel = productModelFromJson(jsonString);

import 'dart:convert';

ProductModel productModelFromJson(String str) => ProductModel.fromJson(json.decode(str));

String productModelToJson(ProductModel data) => json.encode(data.toJson());

class ProductModel {
    ProductModel({
        this.image,
        this.name,
        this.discrption,
        this.offer,
        this.price,
    });

    String? image;
    String? name;
    String? discrption;
    String? offer;
    String? price;

    factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
        image: json["image "],
        name: json["name"],
        discrption: json["discrption"],
        offer: json["offer"],
        price: json["price"],
    );

    Map<String, dynamic> toJson() => {
        "image ": image,
        "name": name,
        "discrption": discrption,
        "offer": offer,
        "price": price,
    };
}
