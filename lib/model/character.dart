// To parse this JSON data, do
//
//     final character = characterFromJson(jsonString);

import 'dart:convert';

Character characterFromJson(String str) => Character.fromJson(json.decode(str));

String characterToJson(Character data) => json.encode(data.toJson());

class Character {
  CharacterClass character;

  Character({
    required this.character,
  });

  factory Character.fromJson(Map<String, dynamic> json) => Character(
        character: CharacterClass.fromJson(json["character"]),
      );

  Map<String, dynamic> toJson() => {
        "character": character.toJson(),
      };
}

class CharacterClass {
  int malId;
  String url;
  Images images;
  String name;

  CharacterClass({
    required this.malId,
    required this.url,
    required this.images,
    required this.name,
  });

  factory CharacterClass.fromJson(Map<String, dynamic> json) => CharacterClass(
        malId: json["mal_id"],
        url: json["url"],
        images: Images.fromJson(json["images"]),
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "mal_id": malId,
        "url": url,
        "images": images.toJson(),
        "name": name,
      };
}

class Images {
  Jpg jpg;
  Webp webp;

  Images({
    required this.jpg,
    required this.webp,
  });

  factory Images.fromJson(Map<String, dynamic> json) => Images(
        jpg: Jpg.fromJson(json["jpg"]),
        webp: Webp.fromJson(json["webp"]),
      );

  Map<String, dynamic> toJson() => {
        "jpg": jpg.toJson(),
        "webp": webp.toJson(),
      };
}

class Jpg {
  String imageUrl;

  Jpg({
    required this.imageUrl,
  });

  factory Jpg.fromJson(Map<String, dynamic> json) => Jpg(
        imageUrl: json["image_url"],
      );

  Map<String, dynamic> toJson() => {
        "image_url": imageUrl,
      };
}

class Webp {
  String imageUrl;
  String smallImageUrl;

  Webp({
    required this.imageUrl,
    required this.smallImageUrl,
  });

  factory Webp.fromJson(Map<String, dynamic> json) => Webp(
        imageUrl: json["image_url"],
        smallImageUrl: json["small_image_url"],
      );

  Map<String, dynamic> toJson() => {
        "image_url": imageUrl,
        "small_image_url": smallImageUrl,
      };
}
