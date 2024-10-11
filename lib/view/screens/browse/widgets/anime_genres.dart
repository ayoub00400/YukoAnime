import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:yuko_anime/view/screens/browse/widgets/genres_item.dart';

import '../../../../utils/constants.dart';
import '../../../common/error_widget.dart';
import '../../../common/loading_widget.dart';
import '../cubit/genres_cubit.dart';

class AnimeGenresScreen extends StatelessWidget {
  const AnimeGenresScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(top: AppSizes.smallPadding, right: AppSizes.smallPadding, left: AppSizes.smallPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(child: BlocBuilder<GenresCubit, GenresState>(
            builder: (context, state) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "All Genres",
                    style: AppTypography.appFont(
                        fontWeight: AppTypography.appFontMedium,
                        color: AppColorsPallette.lightThemeColors[0],
                        fontSize: AppTypography.appFontSize3),
                  ),
                  const SizedBox(
                    height: AppSizes.smallPadding,
                  ),
                  Expanded(
                      child: RefreshIndicator(
                    onRefresh: () async {
                      BlocProvider.of<GenresCubit>(context).getAnimeGenresList();
                    },
                    child: BlocBuilder<GenresCubit, GenresState>(
                      builder: (context, state) {
                        if (state is AnimeGenresLoading) {
                          return const LoadingWidget();
                        }
                        if (state is AnimeGenresLoadingFailed) {
                          return const CustomErrorWidget();
                        }
                        return GridView(
                          shrinkWrap: true,
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              childAspectRatio: 1.15,
                              mainAxisSpacing: AppSizes.smallSpacing,
                              crossAxisSpacing: AppSizes.smallSpacing),
                          children: BlocProvider.of<GenresCubit>(context)
                              .animeGenresList
                              .mapIndexed((index, element) => GenresItem(
                                    category: element.name,
                                    imgPath: element.url,
                                  ))
                              .toList(),
                        );
                      },
                    ),
                  ))
                ],
              );
            },
          ))
        ],
      ),
    );
  }
}
