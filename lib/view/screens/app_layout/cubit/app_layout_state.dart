part of 'app_layout_cubit.dart';

@immutable
sealed class AppLayoutState {}

final class AppLayoutInitial extends AppLayoutState {}

final class PageChanged extends AppLayoutState {}
