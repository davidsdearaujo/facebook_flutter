import 'dart:convert';

import 'story_model.dart';

StoriesModel storiesModelFromJson(String str) => StoriesModel.fromJson(json.decode(str));

String storiesModelToJson(StoriesModel data) => json.encode(data.toJson());

class StoriesModel {
    int id;
    String nome;
    String urlPerfil;
    List<StoryModel> stories;

    StoriesModel({
        this.id,
        this.nome,
        this.urlPerfil,
        this.stories,
    });

    factory StoriesModel.fromJson(Map<String, dynamic> json) => new StoriesModel(
        id: json["id"] == null ? null : json["id"],
        nome: json["nome"] == null ? null : json["nome"],
        urlPerfil: json["urlPerfil"] == null ? null : json["urlPerfil"],
        stories: json["stories"] == null ? null : new List<StoryModel>.from(json["stories"].map((x) => StoryModel.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "nome": nome == null ? null : nome,
        "urlPerfil": urlPerfil == null ? null : urlPerfil,
        "stories": stories == null ? null : new List<dynamic>.from(stories.map((x) => x.toJson())),
    };
}
