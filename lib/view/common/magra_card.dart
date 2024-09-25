import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:template_project/utils/extensions/extension_padding.dart';
import 'package:template_project/view/screens/home/widgets/featured_anime_page_view.dart';

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
      padding: const EdgeInsets.only(bottom: AppSizes.smallPadding),
      clipBehavior: Clip.antiAlias,
      width: width,
      decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(AppSizes.extraSmallRadius)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: CachedNetworkImage(
                fit: BoxFit.fill,
                progressIndicatorBuilder: (context, url, progress) => Transform.scale(
                      scale: .5,
                      child: const CircularProgressIndicator.adaptive(),
                    ),
                errorWidget: (context, url, error) {
                  return const Icon(Icons.image);
                },
                imageUrl: imgPath),
          ),
          const SizedBox(
            height: AppSizes.extraSmallSpacing,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(animeTitle,
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                      style: AppTypography.appFont(
                        fontSize: AppTypography.appFontSize3,
                        color: AppColorsPallette.lightThemeColors.first,
                      )),
                  const Spacer(),
                  Icon(
                    Icons.more_vert,
                    color: AppColorsPallette.lightThemeColors[0],
                    size: AppSizes.smallToMediumIconSize,
                  )
                ],
              ).paddingSymmetric(horizontal: AppSizes.extraSmallPadding),
            ],
          )
        ],
      ),
    );
  }
}
