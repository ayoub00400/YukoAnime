import 'package:flutter/material.dart';
import 'package:template_project/utils/constants.dart';
import 'package:template_project/view/common/anime_card_2.dart';

class AboutAnimeSection extends StatelessWidget {
  final double score;
  final int scoredBy;
  final String description;
  final ValueNotifier showMore = ValueNotifier(false);
  AboutAnimeSection({super.key, required this.score, required this.description, required this.scoredBy});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(
          height: AppSizes.smallSpacing,
        ),
        Text(
          "Rating: ${score.toStringAsPrecision(2)}/10 (${scoredBy >= 1000 ? "${(scoredBy / 1000).truncate()} K" : "$scoredBy"}) ",
          style: AppTypography.appFont(
              fontWeight: AppTypography.appFontRegular,
              color: AppColorsPallette.lightThemeColors[0],
              fontSize: AppTypography.appFontSize3),
        ),
        const SizedBox(
          height: AppSizes.mediumSpacing,
        ),
        ValueListenableBuilder(
          valueListenable: showMore,
          builder: (context, value, child) => Column(
            children: [
              Text(
                description,
                maxLines: showMore.value ? 255 : 6,
                overflow: TextOverflow.ellipsis,
                softWrap: true,
                style: AppTypography.appFont(
                    fontWeight: AppTypography.appFontRegular,
                    color: AppColorsPallette.lightThemeColors[0],
                    fontSize: AppTypography.appFontSize3),
                textAlign: TextAlign.center,
              ),
              TextButton(
                  onPressed: () {
                    showMore.value = !showMore.value;
                  },
                  child: Text(
                    showMore.value ? "ShowLess" : "ShowMore",
                    style: AppTypography.appFont(
                        fontWeight: AppTypography.appFontRegular,
                        color:
                            showMore.value ? AppColorsPallette.lightThemeColors[3] : AppColorsPallette.primaryColors[0],
                        fontSize: AppTypography.appFontSize3),
                  ))
            ],
          ),
        ),
      ],
    );
  }
}
