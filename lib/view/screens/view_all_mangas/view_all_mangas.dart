import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:yuko_anime/view/screens/view_all_mangas/cubit/view_all_mangas_cubit.dart';

import '../../../utils/constants.dart';
import '../../common/app_bar_widget.dart';
import '../../common/error_widget.dart';
import '../../common/loading_widget.dart';
import '../../common/magra_card.dart';

class ViewAllMangasScreen extends StatelessWidget {
  const ViewAllMangasScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ViewAllMangasCubit()..loadTopTrendingManga(),
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
                Expanded(child: BlocBuilder<ViewAllMangasCubit, ViewAllMangasState>(
                  builder: (context, state) {
                    if (state is TopTrendingMangaLoading) {
                      return const LoadingWidget();
                    }
                    if (state is TopTrendingMangaLoadingFailed) {
                      return const CustomErrorWidget();
                    }
                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Expanded(
                          child: GridView(
                              controller: BlocProvider.of<ViewAllMangasCubit>(context).gridController,
                              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                childAspectRatio: .7,
                              ),
                              children: BlocProvider.of<ViewAllMangasCubit>(context)
                                  .topTrendingMangaList
                                  .mapIndexed((index, data) => Padding(
                                      padding: index == 0
                                          ? const EdgeInsets.symmetric(horizontal: AppSizes.smallPadding)
                                          : const EdgeInsets.only(right: AppSizes.smallPadding),
                                      child: MangaCard(
                                        animeTitle: data.title,
                                        width: 180,
                                        height: 250,
                                        imgPath: data.images['jpg'] != null ? data.images['jpg']!.imageUrl : "",
                                      )))
                                  .toList()),
                        ),
                        if (state is TopTrendingMangaLoadingMore)
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
