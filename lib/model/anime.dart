// To parse this JSON data, do
//
//     final anime = animeFromJson(jsonString);

import 'dart:convert';

Anime animeFromJson(String str) => Anime.fromJson(json.decode(str));

String animeToJson(Anime data) => json.encode(data.toJson());

class Anime {
  int malId;
  String url;
  Map<String, AnimeImage> images;
  Trailer trailer;
  bool approved;
  List<Title> titles;
  String title;
  String titleEnglish;
  String titleJapanese;
  List<dynamic> titleSynonyms;
  String type;
  String source;
  int? episodes;
  String status;
  bool airing;
  Aired aired;
  String duration;
  String rating;
  double score;
  int scoredBy;
  int rank;
  int popularity;
  int members;
  int favorites;
  String synopsis;
  String background;
  dynamic season;
  dynamic year;
  Broadcast broadcast;
  List<Genre> producers;
  List<Genre> licensors;
  List<Genre> studios;
  List<Genre> genres;
  List<dynamic> explicitGenres;
  List<dynamic> themes;
  List<dynamic> demographics;

  Anime({
    required this.malId,
    required this.url,
    required this.images,
    required this.trailer,
    required this.approved,
    required this.titles,
    required this.title,
    required this.titleEnglish,
    required this.titleJapanese,
    required this.titleSynonyms,
    required this.type,
    required this.source,
    required this.episodes,
    required this.status,
    required this.airing,
    required this.aired,
    required this.duration,
    required this.rating,
    required this.score,
    required this.scoredBy,
    required this.rank,
    required this.popularity,
    required this.members,
    required this.favorites,
    required this.synopsis,
    required this.background,
    required this.season,
    required this.year,
    required this.broadcast,
    required this.producers,
    required this.licensors,
    required this.studios,
    required this.genres,
    required this.explicitGenres,
    required this.themes,
    required this.demographics,
  });

  factory Anime.fromJson(Map<String, dynamic> json) => Anime(
        malId: json["mal_id"],
        url: json["url"],
        images: Map.from(json["images"]).map((k, v) => MapEntry<String, AnimeImage>(k, AnimeImage.fromJson(v))),
        trailer: Trailer.fromJson(json["trailer"]),
        approved: json["approved"],
        titles: List<Title>.from(json["titles"].map((x) => Title.fromJson(x))),
        title: json["title"],
        titleEnglish: json["title_english"],
        titleJapanese: json["title_japanese"],
        titleSynonyms: List<dynamic>.from(json["title_synonyms"].map((x) => x)),
        type: json["type"],
        source: json["source"],
        episodes: json["episodes"],
        status: json["status"],
        airing: json["airing"],
        aired: Aired.fromJson(json["aired"]),
        duration: json["duration"],
        rating: json["rating"],
        score: json["score"]?.toDouble(),
        scoredBy: json["scored_by"],
        rank: json["rank"],
        popularity: json["popularity"],
        members: json["members"],
        favorites: json["favorites"],
        synopsis: json["synopsis"],
        background: json["background"],
        season: json["season"],
        year: json["year"],
        broadcast: Broadcast.fromJson(json["broadcast"]),
        producers: List<Genre>.from(json["producers"].map((x) => Genre.fromJson(x))),
        licensors: List<Genre>.from(json["licensors"].map((x) => Genre.fromJson(x))),
        studios: List<Genre>.from(json["studios"].map((x) => Genre.fromJson(x))),
        genres: List<Genre>.from(json["genres"].map((x) => Genre.fromJson(x))),
        explicitGenres: List<dynamic>.from(json["explicit_genres"].map((x) => x)),
        themes: List<dynamic>.from(json["themes"].map((x) => x)),
        demographics: List<dynamic>.from(json["demographics"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "mal_id": malId,
        "url": url,
        "images": Map.from(images).map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
        "trailer": trailer.toJson(),
        "approved": approved,
        "titles": List<dynamic>.from(titles.map((x) => x.toJson())),
        "title": title,
        "title_english": titleEnglish,
        "title_japanese": titleJapanese,
        "title_synonyms": List<dynamic>.from(titleSynonyms.map((x) => x)),
        "type": type,
        "source": source,
        "episodes": episodes,
        "status": status,
        "airing": airing,
        "aired": aired.toJson(),
        "duration": duration,
        "rating": rating,
        "score": score,
        "scored_by": scoredBy,
        "rank": rank,
        "popularity": popularity,
        "members": members,
        "favorites": favorites,
        "synopsis": synopsis,
        "background": background,
        "season": season,
        "year": year,
        "broadcast": broadcast.toJson(),
        "producers": List<dynamic>.from(producers.map((x) => x.toJson())),
        "licensors": List<dynamic>.from(licensors.map((x) => x.toJson())),
        "studios": List<dynamic>.from(studios.map((x) => x.toJson())),
        "genres": List<dynamic>.from(genres.map((x) => x.toJson())),
        "explicit_genres": List<dynamic>.from(explicitGenres.map((x) => x)),
        "themes": List<dynamic>.from(themes.map((x) => x)),
        "demographics": List<dynamic>.from(demographics.map((x) => x)),
      };
}

class Aired {
  DateTime from;
  dynamic to;
  Prop prop;
  String string;

  Aired({
    required this.from,
    required this.to,
    required this.prop,
    required this.string,
  });

  factory Aired.fromJson(Map<String, dynamic> json) => Aired(
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

class Broadcast {
  dynamic day;
  dynamic time;
  dynamic timezone;
  dynamic string;

  Broadcast({
    required this.day,
    required this.time,
    required this.timezone,
    required this.string,
  });

  factory Broadcast.fromJson(Map<String, dynamic> json) => Broadcast(
        day: json["day"],
        time: json["time"],
        timezone: json["timezone"],
        string: json["string"],
      );

  Map<String, dynamic> toJson() => {
        "day": day,
        "time": time,
        "timezone": timezone,
        "string": string,
      };
}

class Genre {
  int malId;
  String type;
  String name;
  String url;

  Genre({
    required this.malId,
    required this.type,
    required this.name,
    required this.url,
  });

  factory Genre.fromJson(Map<String, dynamic> json) => Genre(
        malId: json["mal_id"],
        type: json["type"],
        name: json["name"],
        url: json["url"],
      );

  Map<String, dynamic> toJson() => {
        "mal_id": malId,
        "type": type,
        "name": name,
        "url": url,
      };
}

class AnimeImage {
  String imageUrl;
  String smallImageUrl;
  String largeImageUrl;

  AnimeImage({
    required this.imageUrl,
    required this.smallImageUrl,
    required this.largeImageUrl,
  });

  factory AnimeImage.fromJson(Map<String, dynamic> json) => AnimeImage(
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

class Trailer {
  String? youtubeId;
  String? url;
  String? embedUrl;
  Images images;

  Trailer({
    required this.youtubeId,
    required this.url,
    required this.embedUrl,
    required this.images,
  });

  factory Trailer.fromJson(Map<String, dynamic> json) => Trailer(
        youtubeId: json["youtube_id"],
        url: json["url"],
        embedUrl: json["embed_url"],
        images: Images.fromJson(json["images"]),
      );

  Map<String, dynamic> toJson() => {
        "youtube_id": youtubeId,
        "url": url,
        "embed_url": embedUrl,
        "images": images.toJson(),
      };
}

class Images {
  String? imageUrl;
  String? smallImageUrl;
  String? mediumImageUrl;
  String? largeImageUrl;
  String? maximumImageUrl;

  Images({
    required this.imageUrl,
    required this.smallImageUrl,
    required this.mediumImageUrl,
    required this.largeImageUrl,
    required this.maximumImageUrl,
  });

  factory Images.fromJson(Map<String, dynamic> json) => Images(
        imageUrl: json["image_url"],
        smallImageUrl: json["small_image_url"],
        mediumImageUrl: json["medium_image_url"],
        largeImageUrl: json["large_image_url"],
        maximumImageUrl: json["maximum_image_url"],
      );

  Map<String, dynamic> toJson() => {
        "image_url": imageUrl,
        "small_image_url": smallImageUrl,
        "medium_image_url": mediumImageUrl,
        "large_image_url": largeImageUrl,
        "maximum_image_url": maximumImageUrl,
      };
}
