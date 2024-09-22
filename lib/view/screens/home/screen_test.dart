import 'package:flutter/material.dart';

import '../../common/anime_card_2.dart';
import '../../common/card_widget.dart';
import '../../common/horizantal_anime_card_2.dart';

class ScreenTest extends StatelessWidget {
  const ScreenTest({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
          child: HorizontalAnimeCard2(
        animeTitle: "One Piece",
        animeType: 'Series',
        imgPath: "",
      )
          //  CardAnime(
          //   onTap: () {},
          //   selectedTime: 100,
          //   totalTime: 1020,
          //   title: "tokyo ghol",
          //   subtitle: "dsfsd",
          //   image:
          //       "https://static1.cbrimages.com/wordpress/wp-content/uploads/2019/11/Kaneki-Ken-Featured-Image.jpg?q=50&fit=crop&w=1140&h=&dpr=1.5",
          // ),
          ),
    );
  }
}
