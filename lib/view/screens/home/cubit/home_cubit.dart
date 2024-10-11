import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:yuko_anime/model/manga.dart';
import 'package:yuko_anime/repositories/remote/anime/anime_repository_impl.dart';
import 'package:yuko_anime/repositories/remote/manga/manga_repository_impl.dart';

import '../../../../model/anime.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final int limit = 8;
  int page = 1;
  List<Anime> topTrendingAnimeList = [];
  List<Manga> topTrendingMangaList = [];
  AnimeRepositoryImpl animeRepositoryImpl = AnimeRepositoryImpl();
  MangaRepositoryImpl mangaRepositoryImpl = MangaRepositoryImpl();
  HomeCubit() : super(HomeInitial());

  void loadTopTrendingAnime() async {
    try {
      emit(TopTrendingAnimeLoading());
      topTrendingAnimeList = await animeRepositoryImpl.getTopTrendingAnimeList(
        page: page,
        limit: limit,
      );
      emit(TopTrendingAnimeLoaded());
    } on Exception {
      emit(TopTrendingAnimeLoadingFailed());
    }
  }

  void loadTopTrendingManga() async {
    try {
      emit(TopTrendingMangaLoading());
      topTrendingMangaList = await mangaRepositoryImpl.getTopTrendingMangaList(
        page: page,
        limit: limit,
      );
      emit(TopTrendingMangaLoaded());
    } on Exception {
      emit(TopTrendingMangaLoadingFailed());
    }
  }
}
