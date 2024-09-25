import 'package:flutter/material.dart';
import 'package:template_project/utils/constants.dart';
import 'package:template_project/view/common/anime_card_2.dart';

import 'top_trending_shop_card_item.dart';

class TopTrendingShopSection extends StatelessWidget {
  const TopTrendingShopSection({super.key});

  @override
  Widget build(BuildContext context) {
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
                    color: AppColorsPallette.lightThemeColors[0],
                    fontSize: AppTypography.appFontSize3,
                    fontWeight: AppTypography.appFontRegular),
              ),
              const Spacer(),
              Text(
                'View all',
                style: AppTypography.appFont(
                    color: AppColorsPallette.lightThemeColors.last,
                    fontSize: AppTypography.appFontSize4,
                    fontWeight: AppTypography.appFontMedium),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 250,
          child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: List.generate(
                  10,
                  (index) => Padding(
                        padding: index == 0
                            ? const EdgeInsets.symmetric(horizontal: AppSizes.smallPadding)
                            : const EdgeInsets.only(right: AppSizes.smallPadding),
                        child: TopTrendingShopCardItem(
                            animeTitle: 'Figure $index',
                            width: 170,
                            animeType: "Series",
                            imagePath:
                                "https://i5.walmartimages.com/asr/6f2fd3b1-fc32-417d-91d1-71589d0414ed.0e42ea33f6f3d817c72a95f492726663.jpeg?odnHeight=612&odnWidth=612&odnBg=FFFFFF"),
                      ))),
        ),
        const SizedBox(
          height: AppSizes.smallSpacing,
        )
      ],
    );
  }
}
