part of 'genres_cubit.dart';

@immutable
sealed class GenresState {}

final class GenresInitial extends GenresState {}

// For Anime
final class AnimeGenresLoading extends GenresState {}

final class AnimeGenresLoaded extends GenresState {}

final class AnimeGenresLoadingFailed extends GenresState {}

// For Manga
final class MangaGenresLoading extends GenresState {}

final class MangaGenresLoaded extends GenresState {}

final class MangaGenresLoadingFailed extends GenresState {}

// For Filter

final class FilterChanged extends GenresState {}
