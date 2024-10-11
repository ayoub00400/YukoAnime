import 'package:yuko_anime/model/genre.dart';

abstract class GenreRepository {
  Future<List<Genre>> getAnimeGenres({
    String? filter,
  });
  Future<List<Genre>> getMangaGenres({
    String? filter,
  });
}
