import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:template_project/utils/constants.dart';

import 'featured_shop_item.dart';

class FeaturedShopSection extends StatelessWidget {
  PageController myPageViewController = PageController(initialPage: 0);
  var featuredAnimeList = List.generate(4, (index) => const FeaturedShopItem());
  FeaturedShopSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      mainAxisSize: MainAxisSize.min,
      children: [
        Expanded(
          child: Stack(
            alignment: Alignment.bottomCenter,
            fit: StackFit.passthrough,
            children: [
              PageView(
                controller: myPageViewController,
                scrollDirection: Axis.horizontal,
                children: featuredAnimeList,
              ),
            ],
          ),
        ),
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "One Piece : Luffy Tshirts",
                  style: AppTypography.appFont(color: AppColorsPallette.lightThemeColors.first),
                ),
                const Text(
                  "\$ 9.99",
                  style: TextStyle(color: Colors.white, fontSize: AppTypography.appFontSize4),
                ),
              ],
            ),
            const Spacer(),
            FaIcon(
              FontAwesomeIcons.cartPlus,
              color: AppColorsPallette.primaryColors[1],
              size: AppSizes.smallToMediumIconSize,
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: AppSizes.mediumPadding),
          child: SmoothPageIndicator(
            controller: myPageViewController,
            count: featuredAnimeList.length,
            effect: WormEffect(
                activeDotColor: AppColorsPallette.lightThemeColors[0],
                dotHeight: 5,
                dotWidth: 5,
                dotColor: AppColorsPallette.lightThemeColors[2]),
          ),
        ),
      ],
    );
  }
}
