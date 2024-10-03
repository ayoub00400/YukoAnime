enum AnimeSearchQueryType {
  tv,
  movie,
  ova,
  special,
  ona,
  music,
  cm,
  pv,
  tvSpecial;
}

enum TopAnimeFilter {
  airing,
  upcoming,
  byPopularity,
  favorite;
}

enum AnimeSearchQueryRating {
  /// G - All Ages
  /// PG - Children
  /// PG-13 - Teens 13 or older
  /// R - 17+ (violence & profanity)
  /// R+ - Mild Nudity
  /// Rx - Hentai
  g,
  pg,
  pg13,
  r17,
  r,
  rx;
}
