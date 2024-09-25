import 'package:flutter/material.dart';
import 'package:template_project/utils/constants.dart';

import '../../../common/magra_card.dart';

class MangaSection extends StatelessWidget {
  const MangaSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.all(AppSizes.smallPadding),
          child: Row(
            children: [
              Text(
                'Manga',
                style: AppTypography.appFont(fontSize: 18, fontWeight: FontWeight.w500),
              ),
              const Spacer(),
              const Text(
                'View all',
                style: TextStyle(fontSize: 15, color: Colors.grey),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 250,
          child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: List.generate(
                  10,
                  (index) => Padding(
                        padding: index == 0
                            ? const EdgeInsets.symmetric(horizontal: AppSizes.smallPadding)
                            : const EdgeInsets.only(right: AppSizes.smallPadding),
                        child: MangaCard(
                          animeTitle: 'Manga $index',
                          width: 220,
                          height: 250,
                          imgPath:
                              'https://d1csarkz8obe9u.cloudfront.net/posterpreviews/cool-anime-video-music-album-cover-design-template-70bf413b3c1cf99db9e7a40aec385183_screen.jpg?ts=1633335329',
                        ),
                      ))),
        ),
        const SizedBox(
          height: AppSizes.smallSpacing,
        )
      ],
    );
  }
}
