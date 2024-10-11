import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:yuko_anime/utils/constants.dart';

import '../../common/app_bar_widget.dart';
import 'widgets/header.dart';
import 'widgets/manga_section.dart';
import 'widgets/track_anime_section.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColorsPallette.darkThemeColors.first,
      body: SafeArea(
          child: Stack(
        children: [
          const SingleChildScrollView(
            child: Column(
              children: [ProfileHeaderSection(), TopTrendingSection(), MangaSection()],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: AppSizes.smallPadding,
              vertical: AppSizes.smallPadding,
            ),
            child: AppBarWidget(
              bgColor: Colors.transparent,
              title: Text(
                "Browse",
                style: AppTypography.appFont(
                    fontWeight: AppTypography.appFontBold,
                    color: AppColorsPallette.lightThemeColors[0],
                    fontSize: AppTypography.appFontSize1),
              ),
              trailling: [
                FaIcon(
                  Icons.settings,
                  size: AppSizes.mediumIconSize,
                  color: AppColorsPallette.lightThemeColors[0],
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
