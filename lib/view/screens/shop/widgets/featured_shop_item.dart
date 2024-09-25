import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../utils/constants.dart';

class FeaturedShopItem extends StatelessWidget {
  const FeaturedShopItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      fit: StackFit.passthrough,
      children: [
        CachedNetworkImage(
            fit: BoxFit.fitHeight,
            imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSoY1L8gyueeXHU7xO0JWKIkC_vF1P6pMmH8g&s"),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            const Spacer(),
            Container(
              alignment: Alignment.center,
              height: 200,
              width: double.maxFinite,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [Colors.black87, Colors.black54, Colors.black38, Colors.transparent])),
            )
          ],
        ),
      ],
    );
  }
}
