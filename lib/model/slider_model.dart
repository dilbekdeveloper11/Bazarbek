class SliderModel {
    SliderModel({
        this.count,
        this.next,
        this.previous,
        this.results,
    });

    int? count;
    dynamic? next;
    dynamic? previous;
    List<Result>? results;

    factory SliderModel.fromJson(Map<String, dynamic> json) => SliderModel(
        count: json["count"],
        next: json["next"],
        previous: json["previous"],
        results: List<Result>.from(json["results"].map((x) => Result.fromJson(x))),
    );

}

class Result {
    Result({
        this.name,
        this.image,
        this.text,
    });

    String? name;
    String? image;
    String? text;

    factory Result.fromJson(Map<String, dynamic> json) => Result(
        name: json["name"],
        image: json["image"],
        text: json["text"],
    );

  
}
