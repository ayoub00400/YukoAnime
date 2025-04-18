import 'dart:ui';

import 'package:flutter/material.dart';

import '../../../../utils/constants.dart';

class ProfileHeaderSection extends StatelessWidget {
  const ProfileHeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 150,
              width: double.maxFinite,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    'https://4kwallpapers.com/images/walls/thumbs/18363.jpg',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
                child: Container(
                  decoration: const BoxDecoration(color: Colors.black38),
                  height: double.maxFinite,
                  width: double.maxFinite,
                ),
              ),
            ),
            const SizedBox(
              height: 90,
            )
          ],
        ),
        Column(
          children: [
            Container(
              height: 90,
              width: 90,
              decoration: const BoxDecoration(
                //border: Border.all(color: AppColorsPallette.primaryColors.first, width: 3),
                image: DecorationImage(
                  image: NetworkImage(
                    'https://i.pinimg.com/236x/1b/92/e8/1b92e85d40cd78ed0fcd1b0f2a5d5a70.jpg',
                  ),
                  fit: BoxFit.cover,
                ),
                shape: BoxShape.circle,
              ),
            ),
            const SizedBox(
              height: AppSizes.extraSmallSpacing,
            ),
            Text(
              "@ Maria . L",
              style: AppTypography.appFont(
                  fontWeight: AppTypography.appFontBold,
                  color: AppColorsPallette.lightThemeColors[0],
                  fontSize: AppTypography.appFontSize2),
            ),
            const SizedBox(
              height: AppSizes.extraSmallSpacing,
            ),
            Text(
              "Im Flutter apps dev",
              style: AppTypography.appFont(
                  fontWeight: AppTypography.appFontRegular,
                  color: AppColorsPallette.lightThemeColors[0],
                  fontSize: AppTypography.appFontSize4),
            ),
          ],
        ),
      ],
    );
  }
}
