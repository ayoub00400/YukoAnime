// To parse this JSON data, do
//
//     final manga = mangaFromJson(jsonString);

import 'dart:convert';

Manga mangaFromJson(String str) => Manga.fromJson(json.decode(str));

String mangaToJson(Manga data) => json.encode(data.toJson());

class Manga {
  int malId;
  String url;
  Map<String, Image> images;
  bool approved;
  List<Title> titles;
  String title;
  String titleEnglish;
  String titleJapanese;
  List<String> titleSynonyms;
  String type;
  dynamic chapters;
  dynamic volumes;
  String status;
  bool publishing;
  Published published;
  double score;
  double scored;
  int scoredBy;
  int rank;
  int popularity;
  int members;
  int favorites;
  String synopsis;
  String background;
  List<Author> authors;
  List<Author> serializations;
  List<Author> genres;
  List<dynamic> explicitGenres;
  List<Author> themes;
  List<Author> demographics;

  Manga({
    required this.malId,
    required this.url,
    required this.images,
    required this.approved,
    required this.titles,
    required this.title,
    required this.titleEnglish,
    required this.titleJapanese,
    required this.titleSynonyms,
    required this.type,
    required this.chapters,
    required this.volumes,
    required this.status,
    required this.publishing,
    required this.published,
    required this.score,
    required this.scored,
    required this.scoredBy,
    required this.rank,
    required this.popularity,
    required this.members,
    required this.favorites,
    required this.synopsis,
    required this.background,
    required this.authors,
    required this.serializations,
    required this.genres,
    required this.explicitGenres,
    required this.themes,
    required this.demographics,
  });

  factory Manga.fromJson(Map<String, dynamic> json) => Manga(
        malId: json["mal_id"],
        url: json["url"],
        images: Map.from(json["images"]).map((k, v) => MapEntry<String, Image>(k, Image.fromJson(v))),
        approved: json["approved"],
        titles: List<Title>.from(json["titles"].map((x) => Title.fromJson(x))),
        title: json["title"],
        titleEnglish: json["title_english"] ?? "",
        titleJapanese: json["title_japanese"],
        titleSynonyms: List<String>.from(json["title_synonyms"].map((x) => x)),
        type: json["type"],
        chapters: json["chapters"],
        volumes: json["volumes"],
        status: json["status"],
        publishing: json["publishing"],
        published: Published.fromJson(json["published"]),
        score: json["score"]?.toDouble(),
        scored: json["scored"]?.toDouble(),
        scoredBy: json["scored_by"],
        rank: json["rank"],
        popularity: json["popularity"],
        members: json["members"],
        favorites: json["favorites"],
        synopsis: json["synopsis"],
        background: json["background"],
        authors: List<Author>.from(json["authors"].map((x) => Author.fromJson(x))),
        serializations: List<Author>.from(json["serializations"].map((x) => Author.fromJson(x))),
        genres: List<Author>.from(json["genres"].map((x) => Author.fromJson(x))),
        explicitGenres: List<dynamic>.from(json["explicit_genres"].map((x) => x)),
        themes: List<Author>.from(json["themes"].map((x) => Author.fromJson(x))),
        demographics: List<Author>.from(json["demographics"].map((x) => Author.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "mal_id": malId,
        "url": url,
        "images": Map.from(images).map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
        "approved": approved,
        "titles": List<dynamic>.from(titles.map((x) => x.toJson())),
        "title": title,
        "title_english": titleEnglish,
        "title_japanese": titleJapanese,
        "title_synonyms": List<dynamic>.from(titleSynonyms.map((x) => x)),
        "type": type,
        "chapters": chapters,
        "volumes": volumes,
        "status": status,
        "publishing": publishing,
        "published": published.toJson(),
        "score": score,
        "scored": scored,
        "scored_by": scoredBy,
        "rank": rank,
        "popularity": popularity,
        "members": members,
        "favorites": favorites,
        "synopsis": synopsis,
        "background": background,
        "authors": List<dynamic>.from(authors.map((x) => x.toJson())),
        "serializations": List<dynamic>.from(serializations.map((x) => x.toJson())),
        "genres": List<dynamic>.from(genres.map((x) => x.toJson())),
        "explicit_genres": List<dynamic>.from(explicitGenres.map((x) => x)),
        "themes": List<dynamic>.from(themes.map((x) => x.toJson())),
        "demographics": List<dynamic>.from(demographics.map((x) => x.toJson())),
      };
}

class Author {
  int malId;
  Type type;
  String name;
  String url;

  Author({
    required this.malId,
    required this.type,
    required this.name,
    required this.url,
  });

  factory Author.fromJson(Map<String, dynamic> json) => Author(
        malId: json["mal_id"],
        type: typeValues.map[json["type"]]!,
        name: json["name"],
        url: json["url"],
      );

  Map<String, dynamic> toJson() => {
        "mal_id": malId,
        "type": typeValues.reverse[type],
        "name": name,
        "url": url,
      };
}

enum Type { manga, people }

final typeValues = EnumValues({"manga": Type.manga, "people": Type.people});

class Image {
  String imageUrl;
  String smallImageUrl;
  String largeImageUrl;

  Image({
    required this.imageUrl,
    required this.smallImageUrl,
    required this.largeImageUrl,
  });

  factory Image.fromJson(Map<String, dynamic> json) => Image(
        imageUrl: json["image_url"],
        smallImageUrl: json["small_image_url"],
        largeImageUrl: json["large_image_url"],
      );

  Map<String, dynamic> toJson() => {
        "image_url": imageUrl,
        "small_image_url": smallImageUrl,
        "large_image_url": largeImageUrl,
      };
}

class Published {
  DateTime from;
  dynamic to;
  Prop prop;
  String string;

  Published({
    required this.from,
    required this.to,
    required this.prop,
    required this.string,
  });

  factory Published.fromJson(Map<String, dynamic> json) => Published(
        from: DateTime.parse(json["from"]),
        to: json["to"],
        prop: Prop.fromJson(json["prop"]),
        string: json["string"],
      );

  Map<String, dynamic> toJson() => {
        "from": from.toIso8601String(),
        "to": to,
        "prop": prop.toJson(),
        "string": string,
      };
}

class Prop {
  From from;
  From to;

  Prop({
    required this.from,
    required this.to,
  });

  factory Prop.fromJson(Map<String, dynamic> json) => Prop(
        from: From.fromJson(json["from"]),
        to: From.fromJson(json["to"]),
      );

  Map<String, dynamic> toJson() => {
        "from": from.toJson(),
        "to": to.toJson(),
      };
}

class From {
  int? day;
  int? month;
  int? year;

  From({
    required this.day,
    required this.month,
    required this.year,
  });

  factory From.fromJson(Map<String, dynamic> json) => From(
        day: json["day"],
        month: json["month"],
        year: json["year"],
      );

  Map<String, dynamic> toJson() => {
        "day": day,
        "month": month,
        "year": year,
      };
}

class Title {
  String type;
  String title;

  Title({
    required this.type,
    required this.title,
  });

  factory Title.fromJson(Map<String, dynamic> json) => Title(
        type: json["type"],
        title: json["title"],
      );

  Map<String, dynamic> toJson() => {
        "type": type,
        "title": title,
      };
}

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
