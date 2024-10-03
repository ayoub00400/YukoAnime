abstract class AnimeRepository {
  Future<dynamic> getTopTrendingAnimeList({
    required int page,
    required int limit,
    String? type,
    String? filter,
    String? rating,
    bool sfw = true,
  });
}
