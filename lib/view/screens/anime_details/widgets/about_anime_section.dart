import 'package:flutter/material.dart';
import 'package:template_project/utils/constants.dart';
import 'package:template_project/view/common/anime_card_2.dart';

class AboutAnimeSection extends StatelessWidget {
  const AboutAnimeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(
          height: AppSizes.smallSpacing,
        ),
        Text(
          "Rating: 4.8 (30.4K) ",
          style: AppTypography.appFont(
              fontWeight: AppTypography.appFontRegular,
              color: AppColorsPallette.lightThemeColors[0],
              fontSize: AppTypography.appFontSize3),
        ),
        const SizedBox(
          height: AppSizes.mediumSpacing,
        ),
        Text(
          "Consequat do consequat dolore quis consectetur. Irure nostrud ad ipsum sunt voluptate commodo aute excepteur enim cupidatat Lorem dolore. Magna Lorem amet occaecat incididunt elit culpa. Reprehenderit ea tempor consequat eiusmod proident. Culpa incididunt culpa cillum laborum esse consequat cillum cupidatat ex irure. Do ullamco est incididunt aute irure pariatur nostrud est nisi ipsum commodo. Aliqua tempor sint voluptate sunt.",
          style: AppTypography.appFont(
              fontWeight: AppTypography.appFontRegular,
              color: AppColorsPallette.lightThemeColors[0],
              fontSize: AppTypography.appFontSize3),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
