
class StoryModel {
    String url;
    String description;

    StoryModel({
        this.url,
        this.description,
    });

    factory StoryModel.fromJson(Map<String, dynamic> json) => new StoryModel(
        url: json["url"] == null ? null : json["url"],
        description: json["description"] == null ? null : json["description"],
    );

    Map<String, dynamic> toJson() => {
        "url": url == null ? null : url,
        "description": description == null ? null : description,
    };
}