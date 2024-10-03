part of 'home_cubit.dart';

@immutable
sealed class HomeState {}

final class HomeInitial extends HomeState {}

//Anime States:
final class TopTrendingAnimeLoading extends HomeState {}

final class TopTrendingAnimeLoaded extends HomeState {}

final class TopTrendingAnimeLoadingFailed extends HomeState {}

//Manga States:
final class TopTrendingMangaLoading extends HomeState {}

final class TopTrendingMangaLoaded extends HomeState {}

final class TopTrendingMangaLoadingFailed extends HomeState {}
