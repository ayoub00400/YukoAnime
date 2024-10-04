import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:template_project/view/screens/anime_details/cubit/anime_details_cubit.dart';
import 'package:webview_flutter/webview_flutter.dart';
import '../../../../utils/constants.dart';
import '../../../common/horizantal_anime_card_2.dart';
import 'episodes_filter.dart';

class EpisodesList extends StatelessWidget {
  const EpisodesList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AnimeDetailsCubit, AnimeDetailsState>(
      builder: (context, state) {
        if (state is AnimeDetailsLoading) {
          return const Center(
            child: Text("Trailer Loading ... "),
          );
        }

        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            state is AnimeDetailsLoadFailed
                ? const SizedBox()
                : Padding(
                    padding: const EdgeInsets.symmetric(horizontal: AppSizes.smallPadding),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: AppSizes.mediumSpacing,
                        ),
                        Text(
                          "Trailer",
                          style: AppTypography.appFont(
                              fontWeight: AppTypography.appFontBold,
                              color: AppColorsPallette.lightThemeColors[0],
                              fontSize: AppTypography.appFontSize2),
                        ),
                        const SizedBox(
                          height: AppSizes.mediumSpacing,
                        ),
                        SizedBox(
                            height: 300,
                            width: double.maxFinite,
                            child:
                                WebViewWidget(controller: BlocProvider.of<AnimeDetailsCubit>(context).videoController)),
                      ],
                    ),
                  ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: AppSizes.smallPadding),
              child: EpisodesFilter(),
            ),
            Column(
                mainAxisSize: MainAxisSize.min,
                children: List.generate(
                    10,
                    (index) => const HorizontalAnimeCard2(
                          animeTitle: "dqsf",
                          animeType: "Searies",
                          imgPath: "",
                        ))),
          ],
        );
      },
    );
  }
}
