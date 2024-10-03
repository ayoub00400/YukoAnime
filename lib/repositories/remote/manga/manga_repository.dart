import 'package:template_project/model/manga.dart';

abstract class MangaRepository {
  Future<List<Manga>> getTopTrendingMangaList({
    required int page,
    required int limit,
    String? type,
    String? filter,
  });
}
