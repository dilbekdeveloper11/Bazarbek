

class ProductModel {
    ProductModel({
        this.name,
        this.getAbsoluteUrl,
        this.slug,
        this.category,
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
    String? image;
    double? price;
    double? discount;
    String? unit;
    String? backgroundColor;
    double? maxPrice;

    factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
        name: json["name"],
        getAbsoluteUrl: json["get_absolute_url"],
        slug: json["slug"],
        category: json["category"],
        image: json["image"],
        price: json["price"],
        discount: json["discount"],
        unit: json["unit"],
        backgroundColor: json["background_color"],
        maxPrice: json["max_price"],
    );

   
}


