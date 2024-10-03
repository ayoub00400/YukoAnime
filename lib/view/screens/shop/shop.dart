import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:template_project/utils/constants.dart';
import 'package:template_project/view/common/app_bar_widget.dart';

import '../home/widgets/featured_anime_page_view.dart';
import 'widgets/featured_shop_item.dart';
import 'widgets/featured_shop_page_view.dart';
import 'widgets/top_trending_section.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColorsPallette.appBgColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
              top: AppSizes.smallPadding, right: AppSizes.smallPadding, left: AppSizes.smallPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppBarWidget(
                bgColor: Colors.black,
                title: Text(
                  "Shop",
                  style: AppTypography.appFont(
                      fontWeight: AppTypography.appFontBold,
                      color: AppColorsPallette.lightThemeColors[0],
                      fontSize: AppTypography.appFontSize1),
                ),
                trailling: [
                  FaIcon(
                    FontAwesomeIcons.bookmark,
                    size: AppSizes.mediumIconSize,
                    color: AppColorsPallette.lightThemeColors[0],
                  ),
                  const SizedBox(
                    width: AppSizes.mediumSpacing,
                  ),
                  FaIcon(
                    FontAwesomeIcons.magnifyingGlass,
                    size: AppSizes.mediumIconSize,
                    color: AppColorsPallette.lightThemeColors[0],
                  ),
                  const SizedBox(
                    width: AppSizes.mediumSpacing,
                  ),
                  FaIcon(
                    FontAwesomeIcons.bagShopping,
                    size: AppSizes.mediumIconSize,
                    color: AppColorsPallette.lightThemeColors[0],
                  )
                ],
              ),
              Expanded(child: FeaturedShopSection()),
              const SizedBox(
                height: AppSizes.smallPadding,
              ),
              const Expanded(child: TopTrendingShopSection())
            ],
          ),
        ),
      ),
    );
  }
}
