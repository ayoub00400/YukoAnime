import 'package:http/http.dart' as http;

import '../../../model/manga.dart';
import '../../../utils/app_exceptions/response_handler.dart';
import '../../../utils/urls.dart';
import 'manga_repository.dart';

class MangaRepositoryImpl implements MangaRepository {
  @override
  Future<List<Manga>> getTopTrendingMangaList({
    required int page,
    required int limit,
    String? type,
    String? filter,
  }) async {
    final response = await http.get(
      Uri.parse(
        '${Urls.baseUrl}/top/manga?page=$page&limit=$limit${type != null ? '&type=$type' : ''}${filter != null ? '&filter=$filter' : ''}',
      ),
    );

    var decodedResponse = ResponseHandler.processResponse(response);

    var animeList = decodedResponse['data'] as List;
    return animeList.map((anime) => Manga.fromJson(anime)).toList();
  }
}
