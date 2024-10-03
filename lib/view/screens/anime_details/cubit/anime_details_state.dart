part of 'anime_details_cubit.dart';

@immutable
sealed class AnimeDetailsState {}

final class AnimeDetailsInitial extends AnimeDetailsState {}

final class AnimeDetailsLoading extends AnimeDetailsState {}

final class AnimeDetailsLoaded extends AnimeDetailsState {}

final class AnimeDetailsLoadFailed extends AnimeDetailsState {}
