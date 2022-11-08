class ProductCardModel {
  ProductCardModel({
    this.name,
    this.getAbsoluteUrl,
    this.image,
    this.slug,
    this.products,
  });

  String? name;
  String? getAbsoluteUrl;
  String? image;
  String? slug;
  List<Product>? products;

  factory ProductCardModel.fromJson(Map<String, dynamic> json) =>
      ProductCardModel(
        name: json["name"],
        getAbsoluteUrl: json["get_absolute_url"],
        image: json["image"],
        slug: json["slug"],
        products: List<Product>.from(
            json["products"].map((x) => Product.fromJson(x))),
      );
}

class Product {
  Product({
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

  factory Product.fromJson(Map<String, dynamic> json) => Product(
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
