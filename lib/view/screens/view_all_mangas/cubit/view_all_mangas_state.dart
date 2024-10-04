part of 'view_all_mangas_cubit.dart';

@immutable
sealed class ViewAllMangasState {}

final class ViewAllMangasInitial extends ViewAllMangasState {}

//Anime States:
final class TopTrendingMangaLoading extends ViewAllMangasState {}

final class TopTrendingMangaLoadingMore extends ViewAllMangasState {}

final class TopTrendingMangaLoaded extends ViewAllMangasState {}

final class TopTrendingMangaLoadingFailed extends ViewAllMangasState {}
