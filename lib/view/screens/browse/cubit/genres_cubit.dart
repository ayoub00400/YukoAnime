import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:yuko_anime/model/genre.dart';

import '../../../../repositories/remote/genre/genre_repository_impl.dart';

part 'genres_state.dart';

class GenresCubit extends Cubit<GenresState> {
  List<Genre> animeGenresList = <Genre>[];
  List<Genre> mangaGenresList = <Genre>[];
  String selectedFilter = 'Anime';
  int pageIndex = 0;
  GenreRepositoryImpl genreRepositoryImpl;
  GenresCubit({required this.genreRepositoryImpl}) : super(GenresInitial());

  void getAnimeGenresList() async {
    try {
      emit(AnimeGenresLoading());
      animeGenresList = await genreRepositoryImpl.getAnimeGenres();
      emit(AnimeGenresLoaded());
    } on Exception {
      emit(AnimeGenresLoadingFailed());
    }
  }

  void getMangaGenresList() async {
    try {
      emit(MangaGenresLoading());
      mangaGenresList = await genreRepositoryImpl.getMangaGenres();
      emit(MangaGenresLoaded());
    } on Exception {
      emit(MangaGenresLoadingFailed());
    }
  }

  setFilter(String value) {
    selectedFilter = value;
    switch (value) {
      case 'Anime':
        pageIndex = 0;
        break;
      case 'Manga':
        pageIndex = 1;
        break;
      case 'Simulcasts':
        pageIndex = 2;
        break;
      default:
    }
    emit(FilterChanged());
  }
}
