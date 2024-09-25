import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../utils/constants.dart';

class GonresItem extends StatelessWidget {
  final String category;
  final String imgPath;
  const GonresItem({super.key, required this.category, required this.imgPath});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      fit: StackFit.passthrough,
      children: [
        CachedNetworkImage(fit: BoxFit.fill, imageUrl: imgPath),
        Container(
          alignment: Alignment.center,
          width: double.maxFinite,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [Colors.black87, Colors.black54, Colors.transparent])),
          child: Text(
            category,
            style: AppTypography.appFont(
                fontWeight: AppTypography.appFontRegular,
                color: AppColorsPallette.lightThemeColors[0],
                fontSize: AppTypography.appFontSize3),
          ),
        )
      ],
    );
  }
}
