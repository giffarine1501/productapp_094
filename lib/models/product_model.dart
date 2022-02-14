// To parse this JSON data, do
//
//     final products = productsFromJson(jsonString);

import 'dart:convert';

Products productsFromJson(String str) => Products.fromJson(json.decode(str));

String productsToJson(Products data) => json.encode(data.toJson());

class Products {
  Products({
    this.productId,
    this.productName,
    this.productType,
    this.price,
  });

  int? productId;
  String? productName;
  int? productType;
  int? price;

  factory Products.fromJson(Map<String, dynamic> json) => Products(
        productId: json["product_id"],
        productName: json["product_name"],
        productType: json["product_type"],
        price: json["price"],
      );

  Map<String, dynamic> toJson() => {
        "product_id": productId,
        "product_name": productName,
        "product_type": productType,
        "price": price,
      };
}
