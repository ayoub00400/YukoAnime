import 'package:http/http.dart' as http;

import '../../../model/genre.dart';
import '../../../utils/app_exceptions/response_handler.dart';
import '../../../utils/urls.dart';
import 'genre_repository.dart';

class GenreRepositoryImpl implements GenreRepository {
  @override
  Future<List<Genre>> getAnimeGenres({String? filter}) async {
    final response = await http.get(
      Uri.parse(
        '${Urls.baseUrl}/genres/anime${filter != null ? '?filter=$filter' : ''}',
      ),
    );

    var decodedResponse = ResponseHandler.processResponse(response);

    var genreList = decodedResponse['data'] as List;
    return genreList.map((anime) => Genre.fromJson(anime)).toList();
  }

  @override
  Future<List<Genre>> getMangaGenres({String? filter}) async {
    final response = await http.get(
      Uri.parse(
        '${Urls.baseUrl}/genres/manga${filter != null ? '?filter=$filter' : ''}',
      ),
    );

    var decodedResponse = ResponseHandler.processResponse(response);

    var genreList = decodedResponse['data'] as List;
    return genreList.map((anime) => Genre.fromJson(anime)).toList();
  }
}
