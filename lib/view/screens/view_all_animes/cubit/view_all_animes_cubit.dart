import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

import '../../../../model/anime.dart';
import '../../../../repositories/remote/anime/anime_repository_impl.dart';

part 'view_all_animes_state.dart';

class ViewAllAnimesCubit extends Cubit<ViewAllAnimesState> {
  final int limit = 8;
  int page = 1;
  List<Anime> topTrendingAnimeList = [];

  ScrollController gridController = ScrollController();
  AnimeRepositoryImpl animeRepositoryImpl = AnimeRepositoryImpl();
  ViewAllAnimesCubit() : super(ViewAllAnimesInitial()) {
    gridController.addListener(() async {
      if (gridController.offset >= gridController.position.maxScrollExtent) {
        await loadMoreTopTrendingAnime();
      }
    });
  }

  void loadTopTrendingAnime() async {
    try {
      emit(TopTrendingAnimeLoading());
      page = 1;
      topTrendingAnimeList = await animeRepositoryImpl.getTopTrendingAnimeList(
        page: page,
        limit: limit,
      );
      emit(TopTrendingAnimeLoaded());
    } on Exception catch (e) {
      emit(TopTrendingAnimeLoadingFailed());
    }
  }

  Future<void> loadMoreTopTrendingAnime() async {
    try {
      emit(TopTrendingAnimeLoadingMore());
      page++;
      var result = await animeRepositoryImpl.getTopTrendingAnimeList(
        page: page,
        limit: limit,
      );
      topTrendingAnimeList.addAll(result);
      emit(TopTrendingAnimeLoaded());
    } on Exception catch (e) {
      emit(TopTrendingAnimeLoadingFailed());
    }
  }
}
