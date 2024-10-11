import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:yuko_anime/utils/extensions/extension_padding.dart';

import '../../utils/constants.dart';

class AnimeCard2 extends StatelessWidget {
  final bool ismanga;
  final Function onTap;
  final String animeTitle, imagePath, animeType;
  final double width, height;
  const AnimeCard2(
      {super.key,
      required this.animeTitle,
      required this.animeType,
      this.width = 200,
      this.height = 300,
      required this.imagePath,
      this.ismanga = false,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap(),
      child: Container(
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(8)),
        height: height,
        width: width,
        child: Column(
          children: [
            Expanded(
              child: CachedNetworkImage(
                fit: BoxFit.fill,
                progressIndicatorBuilder: (context, url, progress) =>
                    const Center(child: SizedBox(height: 30, width: 30, child: CircularProgressIndicator.adaptive())),
                errorWidget: (context, url, error) {
                  return const Icon(Icons.image);
                },
                width: width,
                imageUrl: imagePath,
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: width / 1.5,
                      child: Text(
                        animeTitle,
                        softWrap: true,
                        overflow: TextOverflow.ellipsis,
                        style: AppTypography.appFont(color: Colors.white, fontSize: AppTypography.appFontSize4),
                      ),
                    ),
                    if (!ismanga)
                      SizedBox(
                        width: width / 1.5,
                        child: Text(
                          animeType,
                          style: AppTypography.appFont(
                              color: AppColorsPallette.lightThemeColors[3], fontSize: AppTypography.appFontSize5),
                        ),
                      ),
                  ],
                ),
                const Spacer(),
                const Icon(
                  Icons.more_vert,
                  color: Colors.white,
                  size: AppSizes.smallToMediumIconSize,
                )
              ],
            ).paddingAll()
          ],
        ),
      ),
    );
  }
}
