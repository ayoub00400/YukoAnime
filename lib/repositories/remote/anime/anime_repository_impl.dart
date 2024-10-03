import 'package:template_project/repositories/remote/anime/anime_repository.dart';
import 'package:http/http.dart' as http;

import '../../../model/anime.dart';
import '../../../utils/app_exceptions/response_handler.dart';
import '../../../utils/urls.dart';

class AnimeRepositoryImpl implements AnimeRepository {
  @override
  Future<List<Anime>> getTopTrendingAnimeList({
    required int page,
    required int limit,
    String? type,
    String? filter,
    String? rating,
    bool sfw = true,
  }) async {
    final response = await http.get(
      Uri.parse(
        '${Urls.baseUrl}/top/anime?sfw=$sfw&page=$page&limit=$limit${type != null ? '&type=$type' : ''}${filter != null ? '&filter=$filter' : ''}${rating != null ? '&rating=$rating' : ''}',
      ),
    );

    var decodedResponse = ResponseHandler.processResponse(response);

    var animeList = decodedResponse['data'] as List;
    return animeList.map((anime) => Anime.fromJson(anime)).toList();
  }
}
