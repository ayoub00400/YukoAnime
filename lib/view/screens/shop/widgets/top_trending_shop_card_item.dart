import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:template_project/utils/extensions/extension_padding.dart';

import '../../../../utils/constants.dart';

class TopTrendingShopCardItem extends StatelessWidget {
  final String animeTitle, imagePath, animeType;
  final double width, height;
  const TopTrendingShopCardItem({
    super.key,
    required this.animeTitle,
    required this.animeType,
    this.width = 200,
    this.height = 300,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(8)),
      height: height,
      width: width,
      child: Column(
        children: [
          Expanded(
            child: CachedNetworkImage(
              fit: BoxFit.fitHeight,
              progressIndicatorBuilder: (context, url, progress) => Transform.scale(
                scale: .5,
                child: const CircularProgressIndicator.adaptive(),
              ),
              errorWidget: (context, url, error) {
                return const Icon(Icons.image);
              },
              imageUrl: imagePath,
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    animeTitle,
                    style: const TextStyle(color: Colors.white),
                  ),
                  const Text(
                    "\$ 9.99",
                    style: TextStyle(color: Colors.white, fontSize: AppTypography.appFontSize4),
                  ),
                ],
              ),
              const Spacer(),
              FaIcon(
                FontAwesomeIcons.cartPlus,
                color: AppColorsPallette.primaryColors[1],
                size: AppSizes.smallToMediumIconSize,
              )
            ],
          ).paddingAll()
        ],
      ),
    );
  }
}
