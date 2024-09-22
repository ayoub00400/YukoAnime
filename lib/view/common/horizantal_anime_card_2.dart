import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:template_project/utils/constants.dart';

class HorizontalAnimeCard2 extends StatelessWidget {
  final String animeType;
  final String animeTitle;
  final double height;
  final String imgPath;

  const HorizontalAnimeCard2(
      {super.key,
      required this.animeTitle,
      required this.animeType,
      this.height = 150,
      required this.imgPath});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppSpacings.smallPadding),
      decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(AppSpacings.extraSmallRadius)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius:
                        BorderRadius.circular(AppSpacings.extraSmallRadius)),
                child: CachedNetworkImage(
                    fit: BoxFit.fill,
                    progressIndicatorBuilder: (context, url, progress) =>
                        Transform.scale(
                          scale: .5,
                          child: const CircularProgressIndicator.adaptive(),
                        ),
                    errorWidget: (context, url, error) {
                      return const Icon(Icons.image);
                    },
                    height: height,
                    imageUrl:
                        'https://d1csarkz8obe9u.cloudfront.net/posterpreviews/cool-anime-video-music-album-cover-design-template-70bf413b3c1cf99db9e7a40aec385183_screen.jpg?ts=1633335329'),
              ),
              SizedBox(
                height: height,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(animeTitle,
                            softWrap: true,
                            overflow: TextOverflow.ellipsis,
                            style: AppTypography.appFont(
                              fontSize: AppTypography.appFontSize3,
                              color: AppColorsPallette.lightThemeColors.first,
                            )),
                        const SizedBox(
                          height: AppSpacings.mediumSpacing,
                        ),
                        Text('S1 E1',
                            softWrap: true,
                            overflow: TextOverflow.ellipsis,
                            style: AppTypography.appFont(
                              fontSize: AppTypography.appFontSize5,
                              color: AppColorsPallette.lightThemeColors[3],
                            )),
                        const SizedBox(
                          height: AppSpacings.mediumSpacing,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              animeType,
                              style: AppTypography.appFont(
                                  color:
                                      AppColorsPallette.lightThemeColors.first,
                                  fontSize: AppTypography.appFontSize4),
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: AppSpacings.extraSmallSpacing),
                              child: Text(
                                '•',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            Text(
                              'Sub | Dub',
                              style: AppTypography.appFont(
                                  color:
                                      AppColorsPallette.lightThemeColors.last,
                                  fontSize: AppTypography.appFontSize4),
                            ),
                            const SizedBox(
                              width: AppSpacings.largeSpacing,
                            ),
                          ],
                        ),
                      ],
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.more_vert,
                        size: 18,
                        color: AppColorsPallette.lightThemeColors[0],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
