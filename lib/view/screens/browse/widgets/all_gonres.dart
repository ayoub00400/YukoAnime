import 'package:flutter/material.dart';

import '../../../../utils/constants.dart';
import '../../../common/anime_card_2.dart';
import 'gonres_item.dart';

class AllGonresSection extends StatelessWidget {
  const AllGonresSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "All Gonres",
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
                crossAxisCount: 2,
                childAspectRatio: 1.15,
                mainAxisSpacing: AppSizes.smallSpacing,
                crossAxisSpacing: AppSizes.smallSpacing),
            children: List.generate(
                10,
                (index) => GonresItem(
                      category: "$index",
                      imgPath: "https://demonslayer-hinokami.sega.com/img/purchase/digital-standard.jpg",
                    )),
          ),
        )
      ],
    );
  }
}
