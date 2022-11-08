class CatalogModel {
  CatalogModel({
    this.name,
    this.getAbsoluteUrl,
    this.getImage,
    this.slug,
  });

  String? name;
  String? getAbsoluteUrl;
  String? getImage;
  String? slug;

  factory CatalogModel.fromJson(Map<String, dynamic> json) => CatalogModel(
        name: json["name"],
        getAbsoluteUrl: json["get_absolute_url"],
        getImage: json["get_image"],
        slug: json["slug"],
      );
}
