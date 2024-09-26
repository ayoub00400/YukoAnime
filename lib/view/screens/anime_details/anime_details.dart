import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:template_project/utils/constants.dart';

import '../../common/app_bar_widget.dart';
import 'widgets/body_section.dart';
import 'widgets/header.dart';

import 'widgets/about_anime_section.dart';

class AnimeDetailsScreen extends StatefulWidget {
  const AnimeDetailsScreen({super.key});

  @override
  State<AnimeDetailsScreen> createState() => _AnimeDetailsScreenState();
}

class _AnimeDetailsScreenState extends State<AnimeDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColorsPallette.darkThemeColors.first,
      body: SafeArea(
          child: Stack(
        children: [
          const SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Flexible(flex: 1, child: HeaderSection()),
                Flexible(flex: 1, child: AboutAnimeSection()),
                Flexible(child: BodySection()),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: AppSizes.smallPadding,
              vertical: AppSizes.smallPadding,
            ),
            child: AppBarWidget(
              bgColor: Colors.transparent,
              leading:
                  Icon(Icons.arrow_back, size: AppSizes.mediumIconSize, color: AppColorsPallette.lightThemeColors[0]),
              title: const SizedBox(),
              trailling: [
                FaIcon(
                  Icons.search,
                  size: AppSizes.mediumIconSize,
                  color: AppColorsPallette.lightThemeColors[0],
                ),
                const SizedBox(
                  width: AppSizes.smallSpacing,
                ),
                FaIcon(
                  Icons.more_vert,
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
