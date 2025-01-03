import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:yuko_anime/utils/constants.dart';
import 'package:yuko_anime/view/common/app_bar_widget.dart';
import 'package:yuko_anime/view/screens/my_list/widgets/recently_added_section.dart';

import 'widgets/filter_section.dart';

class MyListScreen extends StatelessWidget {
  const MyListScreen({super.key});

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
            mainAxisSize: MainAxisSize.min,
            children: [
              AppBarWidget(
                bgColor: Colors.black,
                title: Text(
                  "My List",
                  style: AppTypography.appFont(
                      fontWeight: AppTypography.appFontBold,
                      color: AppColorsPallette.lightThemeColors[0],
                      fontSize: AppTypography.appFontSize1),
                ),
                trailling: [
                  FaIcon(
                    FontAwesomeIcons.magnifyingGlass,
                    size: AppSizes.mediumIconSize,
                    color: AppColorsPallette.lightThemeColors[0],
                  ),
                  const SizedBox(
                    width: AppSizes.mediumSpacing,
                  ),
                  FaIcon(
                    FontAwesomeIcons.circleDown,
                    size: AppSizes.mediumIconSize,
                    color: AppColorsPallette.lightThemeColors[0],
                  )
                ],
              ),
              const FilterSection(),
              const SizedBox(
                height: AppSizes.smallPadding,
              ),
              const Expanded(
                child: IndexedStack(
                  children: [
                    RecentlyAddedSection(),
                    RecentlyAddedSection(),
                    RecentlyAddedSection(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
