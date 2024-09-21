import 'package:flutter/material.dart';

import '../../common/card_widget.dart';

class ScreenTest extends StatelessWidget {
  const ScreenTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CardAnime(
          onTap: () {},
          selectedTime: 400,
          totalTime: 1020,
          title: "tokyo ghol",
          subtitle: "dsfsd",
          image:
              "https://static1.cbrimages.com/wordpress/wp-content/uploads/2019/11/Kaneki-Ken-Featured-Image.jpg?q=50&fit=crop&w=1140&h=&dpr=1.5",
        ),
      ),
    );
  }
}
