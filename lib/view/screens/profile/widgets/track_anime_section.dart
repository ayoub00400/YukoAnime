import 'package:flutter/material.dart';
import 'package:yuko_anime/utils/constants.dart';
import 'package:yuko_anime/view/common/anime_card_2.dart';

class TopTrendingSection extends StatelessWidget {
  const TopTrendingSection({super.key});

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
                'Track Anime',
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
              children: List.generate(
                  10,
                  (index) => Padding(
                        padding: index == 0
                            ? const EdgeInsets.symmetric(horizontal: AppSizes.smallPadding)
                            : const EdgeInsets.only(right: AppSizes.smallPadding),
                        child: AnimeCard2(
                            onTap: () {},
                            animeTitle: 'Anime $index',
                            width: 170,
                            animeType: "Series",
                            imagePath:
                                "https://static1.cbrimages.com/wordpress/wp-content/uploads/2023/11/violet-evergarden-anime-cover-art-from-netflix.jpg"),
                      ))),
        ),
        const SizedBox(
          height: AppSizes.smallSpacing,
        )
      ],
    );
  }
}
