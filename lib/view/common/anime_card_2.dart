import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:template_project/utils/extensions/extension_padding.dart';

import '../../utils/constants.dart';

class AnimeCard2 extends StatelessWidget {
  final bool ismanga;

  final String animeTitle, imagePath, animeType;
  final double width, height;
  const AnimeCard2(
      {super.key,
      required this.animeTitle,
      required this.animeType,
      this.width = 200,
      this.height = 300,
      required this.imagePath,
      this.ismanga = false});

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
              fit: BoxFit.fill,
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
            crossAxisAlignment: CrossAxisAlignment.start,
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
                  if (!ismanga)
                    Text(
                      animeType,
                      style: const TextStyle(color: Colors.white),
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
    );
  }
}
