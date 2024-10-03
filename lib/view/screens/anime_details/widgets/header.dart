import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../utils/constants.dart';
import '../../../common/app_bar_widget.dart';

class HeaderSection extends StatelessWidget {
  final String title;

  final String type;
  final String imgUrl;

  const HeaderSection({super.key, required this.title, required this.type, required this.imgUrl});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 250,
              width: double.maxFinite,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    imgUrl,
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
              height: 210,
            )
          ],
        ),
        Column(
          children: [
            Container(
              height: 320,
              width: 250,
              decoration: BoxDecoration(
                border: Border.all(color: AppColorsPallette.primaryColors.first, width: 1),
                image: DecorationImage(
                  image: NetworkImage(
                    imgUrl,
                  ),
                  fit: BoxFit.fill,
                ),
                shape: BoxShape.rectangle,
              ),
            ),
            const SizedBox(
              height: AppSizes.smallSpacing,
            ),
            Text(
              title,
              style: AppTypography.appFont(
                  fontWeight: AppTypography.appFontBold,
                  color: AppColorsPallette.lightThemeColors[0],
                  fontSize: AppTypography.appFontSize2),
            ),
            const SizedBox(
              height: AppSizes.smallSpacing,
            ),
            Text(
              type,
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
