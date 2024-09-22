import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../utils/constants.dart';

class MangaCard extends StatelessWidget {
  final String animeTitle;

  final double width;
  final double height;
  final String imgPath;
  const MangaCard(
      {super.key, required this.animeTitle, required this.width, required this.height, required this.imgPath});

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
