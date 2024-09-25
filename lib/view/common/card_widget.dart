import 'package:flutter/material.dart';
import '../../utils/constants.dart';

class CardAnime extends StatelessWidget {
  const CardAnime({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.image,
    required this.onTap,
    this.height = 150,
    this.width = 300,
    required this.selectedTime,
    required this.totalTime,
  }) : super(key: key);

  final String title;
  final String subtitle;
  final String image;
  final double selectedTime;
  final double totalTime;
  final Function onTap;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(image),
          ),
        ),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(AppSizes.smallPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Spacer(),
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: AppTypography.appFontSize2,
                      color: AppColorsPallette.lightThemeColors[0],
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        subtitle,
                        style: TextStyle(
                          fontSize: AppTypography.appFontSize3,
                          color: AppColorsPallette.lightThemeColors[1],
                        ),
                      ),
                      const Spacer(),
                      Text(
                        '${selectedTime.toStringAsFixed(2)}mn',
                        style: TextStyle(
                          fontSize: AppTypography.appFontSize5,
                          color: AppColorsPallette.lightThemeColors[1],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Center(
              child: Icon(
                Icons.play_circle_outline_outlined,
                size: AppSizes.largIconSize,
                color: AppColorsPallette.lightThemeColors[0],
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: Container(
                width: calculateProgressWidth(),
                height: AppSizes.smallSpacing,
                decoration: BoxDecoration(
                  color: AppColorsPallette.primaryColors[1],
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(8),
                    topRight: Radius.circular(8),
                    bottomRight: Radius.circular(8),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  double calculateProgressWidth() {
    if (totalTime == 0) return 0;
    return (selectedTime * width) / totalTime;
  }
}
