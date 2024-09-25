import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FeaturedAnimeItem extends StatelessWidget {
  const FeaturedAnimeItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      fit: StackFit.passthrough,
      children: [
        CachedNetworkImage(
            fit: BoxFit.fill, imageUrl: "https://demonslayer-hinokami.sega.com/img/purchase/digital-standard.jpg"),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 50,
              width: double.maxFinite,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.black87, Colors.black54, Colors.black38, Colors.transparent])),
            ),
            const Spacer(),
            Container(
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
