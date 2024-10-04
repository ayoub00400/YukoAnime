part of 'view_all_animes_cubit.dart';

@immutable
sealed class ViewAllAnimesState {}

final class ViewAllAnimesInitial extends ViewAllAnimesState {}

//Anime States:
final class TopTrendingAnimeLoading extends ViewAllAnimesState {}

final class TopTrendingAnimeLoadingMore extends ViewAllAnimesState {}

final class TopTrendingAnimeLoaded extends ViewAllAnimesState {}

final class TopTrendingAnimeLoadingFailed extends ViewAllAnimesState {}
