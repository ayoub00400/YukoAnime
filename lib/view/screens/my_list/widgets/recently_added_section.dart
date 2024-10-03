import 'package:flutter/material.dart';

import '../../../../utils/constants.dart';
import '../../../common/anime_card_2.dart';

class RecentlyAddedSection extends StatelessWidget {
  const RecentlyAddedSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Recently Added",
          style: AppTypography.appFont(
              fontWeight: AppTypography.appFontMedium,
              color: AppColorsPallette.lightThemeColors[0],
              fontSize: AppTypography.appFontSize3),
        ),
        const SizedBox(
          height: AppSizes.smallPadding,
        ),
        Expanded(
          child: GridView(
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, childAspectRatio: .7, mainAxisSpacing: AppSizes.extraSmallSpacing),
            children: List.generate(
                10,
                (index) => AnimeCard2(
                    onTap: () {},
                    animeTitle: 'Anime $index',
                    width: 170,
                    animeType: "Series",
                    imagePath:
                        "https://static1.cbrimages.com/wordpress/wp-content/uploads/2023/11/violet-evergarden-anime-cover-art-from-netflix.jpg")),
          ),
        )
      ],
    );
  }
}
