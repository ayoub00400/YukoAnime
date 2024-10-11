import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:yuko_anime/repositories/remote/genre/genre_repository_impl.dart';
import 'package:yuko_anime/utils/constants.dart';
import 'package:yuko_anime/view/common/app_bar_widget.dart';
import 'package:yuko_anime/view/screens/browse/cubit/genres_cubit.dart';

import 'widgets/anime_genres.dart';
import 'widgets/filter_section.dart';
import 'widgets/manga_genres.dart';
import 'widgets/simulcast.dart';

class BrowseScreen extends StatelessWidget {
  const BrowseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GenresCubit(genreRepositoryImpl: GenreRepositoryImpl())..getAnimeGenresList(),
      child: Scaffold(
        backgroundColor: AppColorsPallette.appBgColor,
        body: SafeArea(
            child: Column(
          children: [
            AppBarWidget(
              bgColor: Colors.black,
              title: Text(
                "Browse",
                style: AppTypography.appFont(
                    fontWeight: AppTypography.appFontBold,
                    color: AppColorsPallette.lightThemeColors[0],
                    fontSize: AppTypography.appFontSize1),
              ),
              trailling: [
                FaIcon(
                  FontAwesomeIcons.magnifyingGlass,
                  size: AppSizes.mediumIconSize,
                  color: AppColorsPallette.lightThemeColors[0],
                ),
                const SizedBox(
                  width: AppSizes.mediumSpacing,
                ),
                FaIcon(
                  FontAwesomeIcons.circleDown,
                  size: AppSizes.mediumIconSize,
                  color: AppColorsPallette.lightThemeColors[0],
                )
              ],
            ),
            const FilterSection(),
            const SizedBox(
              height: AppSizes.smallPadding,
            ),
            Expanded(
              child: BlocBuilder<GenresCubit, GenresState>(
                builder: (context, state) {
                  return IndexedStack(
                    index: BlocProvider.of<GenresCubit>(context).pageIndex,
                    children: [AnimeGenresScreen(), MangaGenresScreen(), SimulCastGenresScreen()],
                  );
                },
              ),
            )
          ],
        )),
      ),
    );
  }
}
