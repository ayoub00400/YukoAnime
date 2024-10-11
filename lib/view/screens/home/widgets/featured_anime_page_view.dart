import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:yuko_anime/utils/constants.dart';
import 'package:yuko_anime/utils/extensions/extension_padding.dart';

import '../../../common/icon_button_widget.dart';
import 'featured_anime_item.dart';

// ignore: must_be_immutable
class FeaturedAnimeSection extends StatelessWidget {
  PageController myPageViewController = PageController(initialPage: 0);
  var featuredAnimeList = List.generate(4, (index) => const FeaturedAnimeItem());
  FeaturedAnimeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.passthrough,
      children: [
        PageView(
          controller: myPageViewController,
          scrollDirection: Axis.horizontal,
          children: featuredAnimeList,
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                const CircleAvatar(),
                const Spacer(),
                FaIcon(
                  FontAwesomeIcons.magnifyingGlass,
                  size: 20,
                  color: AppColorsPallette.lightThemeColors[0],
                ),
                const SizedBox(
                  width: AppSizes.mediumSpacing,
                ),
                FaIcon(
                  FontAwesomeIcons.circleDown,
                  size: 20,
                  color: AppColorsPallette.lightThemeColors[0],
                )
              ],
            ).paddingSymmetric(horizontal: AppSizes.halfMediumSpacing, vertical: AppSizes.halfMediumSpacing),
            const Spacer(),
            Text(
              "Demon Slayer: Kimetsu no Yaiba",
              style: AppTypography.appFont(
                  color: AppColorsPallette.lightThemeColors[0],
                  fontSize: AppTypography.appFontSize1,
                  fontWeight: AppTypography.appFontBold),
            ),
            Text("Action,Shonon,Dark Fantasy . 4 Seasons",
                style: AppTypography.appFont(
                    color: AppColorsPallette.lightThemeColors[0],
                    fontSize: AppTypography.appFontSize4,
                    fontWeight: AppTypography.appFontMedium)),
            const SizedBox(
              height: AppSizes.smallSpacing,
            ),
            CommonIconButton(
              onTap: () {},
              onIconTapped: () {},
              height: AppSizes.buttonHeight,
              color: AppColorsPallette.primaryColors[0],
              radiusValue: AppSizes.extraSmallRadius / 2,
              label: 'Play',
              contentPadding: 64,
              trailingIcon: Icon(
                FontAwesomeIcons.plus,
                color: AppColorsPallette.lightThemeColors[0],
                size: 15,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: AppSizes.smallPadding),
              child: SmoothPageIndicator(
                controller: myPageViewController,
                count: featuredAnimeList.length,
                effect: WormEffect(
                    activeDotColor: AppColorsPallette.lightThemeColors[0],
                    dotHeight: 5,
                    dotWidth: 5,
                    dotColor: AppColorsPallette.lightThemeColors[2]),
              ),
            )
          ],
        )
      ],
    );
  }
}
