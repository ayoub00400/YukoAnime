import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:template_project/utils/constants.dart';

import '../../../../config/routes/routing_manager.dart';
import '../../../common/error_widget.dart';
import '../../../common/loading_widget.dart';
import '../../../common/magra_card.dart';
import '../cubit/home_cubit.dart';

class MangaSection extends StatelessWidget {
  const MangaSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        var homeCubit = BlocProvider.of<HomeCubit>(context);
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
                    'Manga',
                    style: AppTypography.appFont(
                        fontSize: 18, color: AppColorsPallette.lightThemeColors.first, fontWeight: FontWeight.w500),
                  ),
                  const Spacer(),
                  InkWell(
                    onTap: () {
                      GoRouter.of(context).pushNamed(RoutingManager.viewAllMangasScreenPath);
                    },
                    child: const Text(
                      'View all',
                      style: TextStyle(fontSize: 15, color: Colors.grey),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 250,
              child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: homeCubit.topTrendingMangaList
                      .mapIndexed((index, e) => Padding(
                          padding: index == 0
                              ? const EdgeInsets.symmetric(horizontal: AppSizes.smallPadding)
                              : const EdgeInsets.only(right: AppSizes.smallPadding),
                          child: MangaCard(
                            animeTitle: e.title,
                            width: 180,
                            height: 250,
                            imgPath: e.images['jpg'] != null ? e.images['jpg']!.imageUrl : "",
                          )))
                      .toList()),
            ),
            const SizedBox(
              height: AppSizes.smallSpacing,
            )
          ],
        );
      },
    );
  }
}
