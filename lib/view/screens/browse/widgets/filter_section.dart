import 'package:flutter/material.dart';

import '../../../../utils/constants.dart';
import '../../../common/button_widget.dart';

class FilterSection extends StatelessWidget {
  const FilterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CommonButton(
            onTap: () {},
            height: AppSizes.buttonHeight,
            color: AppColorsPallette.primaryColors[0],
            radiusValue: AppSizes.extraSmallRadius / 2,
            label: 'Anime',
          ),
          CommonButton(
            onTap: () {},
            height: AppSizes.buttonHeight,
            color: AppColorsPallette.darkThemeColors[0],
            isBorderEnabled: true,
            borderColor: AppColorsPallette.lightThemeColors[0],
            radiusValue: AppSizes.extraSmallRadius / 2,
            label: 'Manga',
          ),
          CommonButton(
            onTap: () {},
            height: AppSizes.buttonHeight,
            color: AppColorsPallette.darkThemeColors[0],
            isBorderEnabled: true,
            borderColor: AppColorsPallette.lightThemeColors[0],
            radiusValue: AppSizes.extraSmallRadius / 2,
            label: 'Simulcasts',
          ),
        ],
      ),
    );
  }
}
