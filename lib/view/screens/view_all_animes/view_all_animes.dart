import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:yuko_anime/view/screens/view_all_animes/cubit/view_all_animes_cubit.dart';

import '../../../config/routes/routing_manager.dart';
import '../../../utils/constants.dart';
import '../../common/anime_card_2.dart';
import '../../common/app_bar_widget.dart';
import '../../common/error_widget.dart';
import '../../common/loading_widget.dart';

class ViewAllAnimesScreen extends StatelessWidget {
  const ViewAllAnimesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ViewAllAnimesCubit()..loadTopTrendingAnime(),
      child: Scaffold(
          backgroundColor: AppColorsPallette.appBgColor,
          body: SafeArea(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: AppSizes.smallPadding,
                    vertical: AppSizes.smallPadding,
                  ),
                  child: AppBarWidget(
                    bgColor: Colors.transparent,
                    leading: InkWell(
                        onTap: () => GoRouter.of(context).pop(),
                        child: Icon(Icons.arrow_back,
                            size: AppSizes.mediumIconSize, color: AppColorsPallette.lightThemeColors[0])),
                    title: const SizedBox(),
                    trailling: const [],
                  ),
                ),
                const SizedBox(
                  height: AppSizes.mediumSpacing,
                ),
                Expanded(child: BlocBuilder<ViewAllAnimesCubit, ViewAllAnimesState>(
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
                        Expanded(
                          child: GridView(
                              controller: BlocProvider.of<ViewAllAnimesCubit>(context).gridController,
                              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                childAspectRatio: .7,
                              ),
                              children: BlocProvider.of<ViewAllAnimesCubit>(context)
                                  .topTrendingAnimeList
                                  .mapIndexed((index, data) => Padding(
                                      padding: index == 0
                                          ? const EdgeInsets.symmetric(horizontal: AppSizes.smallPadding)
                                          : const EdgeInsets.only(right: AppSizes.smallPadding),
                                      child: AnimeCard2(
                                        onTap: () async {
                                          await GoRouter.of(context)
                                              .pushNamed(RoutingManager.animeDetailsScreenPath, extra: data);
                                        },
                                        animeTitle: data.titleEnglish,
                                        width: 170,
                                        animeType: data.type,
                                        imagePath: data.images["jpg"] != null ? data.images["jpg"]!.imageUrl : "",
                                      )))
                                  .toList()),
                        ),
                        if (state is TopTrendingAnimeLoadingMore)
                          const Center(
                            child: SizedBox(height: 30, width: 30, child: CircularProgressIndicator()),
                          )
                      ],
                    );
                  },
                )),
              ],
            ),
          )),
    );
  }
}
