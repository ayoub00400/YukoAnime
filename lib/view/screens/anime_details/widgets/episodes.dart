import 'package:flutter/material.dart';

import '../../../common/horizantal_anime_card_2.dart';

class EpisodesList extends StatelessWidget {
  const EpisodesList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        children: List.generate(
            10,
            (index) => const HorizontalAnimeCard2(
                  animeTitle: "dqsf",
                  animeType: "Searies",
                  imgPath: "",
                )));
  }
}
