import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:template_project/utils/constants.dart';

class AnimeCard2 extends StatelessWidget {
  final String animeTitle;
  final String animeType;
  final double width;
  final double height;
  const AnimeCard2(
      {super.key, required this.animeTitle, required this.animeType, required this.width, this.height = 300});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: AppSpacings.smallPadding),
      clipBehavior: Clip.antiAlias,
      width: width,
      decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(AppSpacings.extraSmallRadius)),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: AppSpacings.smallPadding),
                child: Expanded(
                  child: CachedNetworkImage(
                      fit: BoxFit.fitHeight,
                      progressIndicatorBuilder: (context, url, progress) => Transform.scale(
                            scale: .5,
                            child: const CircularProgressIndicator.adaptive(),
                          ),
                      errorWidget: (context, url, error) {
                        return const Icon(Icons.image);
                      },
                      height: height * 2 / 3,
                      imageUrl:
                          'https://d1csarkz8obe9u.cloudfront.net/posterpreviews/cool-anime-video-music-album-cover-design-template-70bf413b3c1cf99db9e7a40aec385183_screen.jpg?ts=1633335329'),
                ),
              ),
              Flexible(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                          width: width * 2.5 / 3,
                          child: Text(animeTitle,
                              softWrap: true,
                              overflow: TextOverflow.ellipsis,
                              style: AppTypography.appFont(
                                fontSize: AppTypography.appFontSize3,
                                color: AppColorsPallette.lightThemeColors.first,
                              )),
                        ),
                        Icon(
                          Icons.more_vert,
                          color: AppColorsPallette.lightThemeColors[0],
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          animeType,
                          style: AppTypography.appFont(
                              color: AppColorsPallette.lightThemeColors.first, fontSize: AppTypography.appFontSize4),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: AppSpacings.extraSmallSpacing),
                          child: Text(
                            '•',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        Text(
                          'Sub | Dub',
                          style: AppTypography.appFont(
                              color: AppColorsPallette.lightThemeColors.last, fontSize: AppTypography.appFontSize4),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
