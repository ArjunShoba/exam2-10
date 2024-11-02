// To parse this JSON data, do
//
//     final mascara = mascaraFromJson(jsonString);

import 'dart:convert';

Mascara mascaraFromJson(String str) => Mascara.fromJson(json.decode(str));

class Mascara {
    List<Product> products;

    Mascara({
        required this.products,
    });

    factory Mascara.fromJson(Map<String, dynamic> json) => Mascara(
        products: List<Product>.from(json["products"].map((x) => Product.fromJson(x))),
    );

   
}

class Product {
    int id;
    String title;
    double price;
    List<String> images;
    

    Product({
        required this.id,
        required this.title,
        
        required this.price,
       
        required this.images,
        
    });

    factory Product.fromJson(Map<String, dynamic> json) => Product(
        id: json["id"],
        title: json["title"],
        price: json["price"]?.toDouble(),
       
        images: List<String>.from(json["images"].map((x) => x)),
      
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "price": price,
        
        "images": List<dynamic>.from(images.map((x) => x)),
        
    };
}

class Dimensions {
    double width;
    double height;
    double depth;

    Dimensions({
        required this.width,
        required this.height,
        required this.depth,
    });

    factory Dimensions.fromJson(Map<String, dynamic> json) => Dimensions(
        width: json["width"]?.toDouble(),
        height: json["height"]?.toDouble(),
        depth: json["depth"]?.toDouble(),
    );

    Map<String, dynamic> toJson() => {
        "width": width,
        "height": height,
        "depth": depth,
    };
}

class Meta {
    DateTime createdAt;
    DateTime updatedAt;
    String barcode;
    String qrCode;

    Meta({
        required this.createdAt,
        required this.updatedAt,
        required this.barcode,
        required this.qrCode,
    });

    factory Meta.fromJson(Map<String, dynamic> json) => Meta(
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        barcode: json["barcode"],
        qrCode: json["qrCode"],
    );

    Map<String, dynamic> toJson() => {
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
        "barcode": barcode,
        "qrCode": qrCode,
    };
}

class Review {
    int rating;
    String comment;
    DateTime date;
    String reviewerName;
    String reviewerEmail;

    Review({
        required this.rating,
        required this.comment,
        required this.date,
        required this.reviewerName,
        required this.reviewerEmail,
    });

    factory Review.fromJson(Map<String, dynamic> json) => Review(
        rating: json["rating"],
        comment: json["comment"],
        date: DateTime.parse(json["date"]),
        reviewerName: json["reviewerName"],
        reviewerEmail: json["reviewerEmail"],
    );

    Map<String, dynamic> toJson() => {
        "rating": rating,
        "comment": comment,
        "date": date.toIso8601String(),
        "reviewerName": reviewerName,
        "reviewerEmail": reviewerEmail,
    };
}
