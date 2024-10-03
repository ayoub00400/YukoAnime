import 'package:collection/collection.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:template_project/utils/constants.dart';
import 'package:template_project/view/common/anime_card_2.dart';
import 'package:template_project/view/screens/home/cubit/home_cubit.dart';

import '../../../common/error_widget.dart';
import '../../../common/loading_widget.dart';

class TopTrendingSection extends StatelessWidget {
  const TopTrendingSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        if (state is TopTrendingAnimeLoading) {
          return const LoadingWidget();
        }
        if (state is TopTrendingAnimeLoadingFailed) {
          return const CustomErrorWidget();
        }
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.all(AppSizes.smallPadding),
              child: Row(
                children: [
                  Text(
                    'Top Trending',
                    style: AppTypography.appFont(
                        fontSize: 18, color: AppColorsPallette.lightThemeColors.first, fontWeight: FontWeight.w500),
                  ),
                  const Spacer(),
                  const Text(
                    'View all',
                    style: TextStyle(fontSize: 15, color: Colors.grey),
                  ),
                ],
              ),
            ),
            SizedBox(
                height: 250,
                child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: BlocProvider.of<HomeCubit>(context).topTrendingAnimeList.mapIndexed(
                      (index, e) {
                        return Padding(
                            padding: index == 0
                                ? const EdgeInsets.symmetric(horizontal: AppSizes.smallPadding)
                                : const EdgeInsets.only(right: AppSizes.smallPadding),
                            child: AnimeCard2(
                              animeTitle: e.titleEnglish,
                              width: 170,
                              animeType: e.type,
                              imagePath: e.images["jpg"] != null ? e.images["jpg"]!.imageUrl : "",
                            ));
                      },
                    ).toList())),
            const SizedBox(
              height: AppSizes.smallSpacing,
            )
          ],
        );
      },
    );
  }
}
