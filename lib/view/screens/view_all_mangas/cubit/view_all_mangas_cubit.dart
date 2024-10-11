import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:yuko_anime/model/manga.dart';

import '../../../../repositories/remote/manga/manga_repository_impl.dart';

part 'view_all_mangas_state.dart';

class ViewAllMangasCubit extends Cubit<ViewAllMangasState> {
  final int limit = 8;
  int page = 1;
  List<Manga> topTrendingMangaList = [];

  ScrollController gridController = ScrollController();
  MangaRepositoryImpl mangaRepositoryImpl = MangaRepositoryImpl();
  ViewAllMangasCubit() : super(ViewAllMangasInitial()) {
    gridController.addListener(() async {
      if (gridController.offset >= gridController.position.maxScrollExtent) {
        await loadMoreTopTrendingManga();
      }
    });
  }

  void loadTopTrendingManga() async {
    try {
      emit(TopTrendingMangaLoading());
      page = 1;
      topTrendingMangaList = await mangaRepositoryImpl.getTopTrendingMangaList(
        page: page,
        limit: limit,
      );
      emit(TopTrendingMangaLoaded());
    } on Exception {
      emit(TopTrendingMangaLoadingFailed());
    }
  }

  Future<void> loadMoreTopTrendingManga() async {
    try {
      emit(TopTrendingMangaLoadingMore());
      page++;
      var result = await mangaRepositoryImpl.getTopTrendingMangaList(
        page: page,
        limit: limit,
      );
      topTrendingMangaList.addAll(result);
      emit(TopTrendingMangaLoaded());
    } on Exception {
      emit(TopTrendingMangaLoadingFailed());
    }
  }
}
