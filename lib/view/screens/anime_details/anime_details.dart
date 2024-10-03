import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:template_project/model/anime.dart';
import 'package:template_project/utils/constants.dart';
import 'package:template_project/view/common/icon_button_widget.dart';

import '../../common/app_bar_widget.dart';
import 'cubit/anime_details_cubit.dart';
import 'widgets/body_section.dart';
import 'widgets/header.dart';

import 'widgets/about_anime_section.dart';

class AnimeDetailsScreen extends StatefulWidget {
  final Anime animeData;
  const AnimeDetailsScreen({super.key, required this.animeData});

  @override
  State<AnimeDetailsScreen> createState() => _AnimeDetailsScreenState();
}

class _AnimeDetailsScreenState extends State<AnimeDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    final animeDetailsCubit = AnimeDetailsCubit(widget.animeData);
    return BlocProvider(
      create: (context) => animeDetailsCubit..loadTrailer(),
      child: Scaffold(
        backgroundColor: AppColorsPallette.darkThemeColors.first,
        body: SafeArea(
            child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Flexible(
                      flex: 1,
                      child: HeaderSection(
                        type: widget.animeData.type,
                        title: widget.animeData.titleEnglish,
                        imgUrl: widget.animeData.images["jpg"] != null ? widget.animeData.images["jpg"]!.imageUrl : "",
                      )),
                  Flexible(
                      flex: 1,
                      child: AboutAnimeSection(
                        score: widget.animeData.score,
                        scoredBy: widget.animeData.scoredBy,
                        description: widget.animeData.synopsis,
                      )),
                  const Flexible(child: BodySection()),
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
                leading: InkWell(
                    onTap: () => GoRouter.of(context).pop(),
                    child: Icon(Icons.arrow_back,
                        size: AppSizes.mediumIconSize, color: AppColorsPallette.lightThemeColors[0])),
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
            Positioned(
              bottom: 16,
              left: 8,
              right: 8,
              child: CommonIconButton(
                  onTap: () {},
                  label: 'Watch now',
                  color: AppColorsPallette.primaryColors.first,
                  height: 40,
                  minWidth: MediaQuery.of(context).size.width * 3 / 4,
                  radiusValue: 5,
                  trailingIcon: const Icon(Icons.save)),
            )
          ],
        )),
      ),
    );
  }
}
