// To parse this JSON data, do
//
//     final discountModel = discountModelFromJson(jsonString);

import 'dart:convert';

DiscountModel discountModelFromJson(String str) => DiscountModel.fromJson(json.decode(str));


class DiscountModel {
    DiscountModel({
        this.count,
        this.next,
        this.previous,
        this.results,
    });

    int? count;
    dynamic? next;
    dynamic? previous;
    List<Results>? results;

    factory DiscountModel.fromJson(Map<String, dynamic> json) => DiscountModel(
        count: json["count"],
        next: json["next"],
        previous: json["previous"],
        results: List<Results>.from(json["results"].map((x) => Results.fromJson(x))),
    );

   
}

class Results {
    Results({
        this.name,
        this.getAbsoluteUrl,
        this.slug,
        this.category,
        this.categorySlug,
        this.image,
        this.price,
        this.discount,
        this.unit,
        this.backgroundColor,
        this.maxPrice,
    });

    String? name;
    String? getAbsoluteUrl;
    String? slug;
    String? category;
    String? categorySlug;
    String? image;
    double? price;
    double? discount;
    String? unit;
    String? backgroundColor;
    double? maxPrice;

    factory Results.fromJson(Map<String, dynamic> json) => Results(
        name: json["name"],
        getAbsoluteUrl: json["get_absolute_url"],
        slug: json["slug"],
        category: json["category"],
        categorySlug: json["category_slug"],
        image: json["image"],
        price: json["price"],
        discount: json["discount"].toDouble(),
        unit: json["unit"],
        backgroundColor: json["background_color"],
        maxPrice: json["max_price"],
    );

    
}
