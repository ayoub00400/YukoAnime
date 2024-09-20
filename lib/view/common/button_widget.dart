import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/constants.dart';
import '../../utils/extensions/app_context_helper.dart';

class CommonButton extends StatelessWidget {
  final Function onTap;
  final bool isLoading;
  final double verticalPadding;
  final double horizontalPadding;
  final double height;
  final double fontSize;
  final double minWidth;
  final bool isBorderEnabled;
  final Color borderColor;

  double radiusValue = AppSpacings.smallRadius;
  final String label;
  Color? color = AppColorsPallette.secondaryColors[0];
  final Color loadingColor;
  final Color? labelColor;
  final bool isRectangular;

  CommonButton({
    super.key,
    required this.onTap,
    this.isLoading = false,
    this.verticalPadding = 8,
    this.horizontalPadding = 8,
    required this.label,
    this.color,
    this.labelColor = Colors.white,
    required this.height,
    this.loadingColor = Colors.white,
    this.minWidth = 100,
    required this.radiusValue,
    this.isRectangular = true,
    this.fontSize = AppTypography.appFontSize2,
    this.isBorderEnabled = false,
    this.borderColor = Colors.transparent,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: verticalPadding, horizontal: horizontalPadding),
      child: MaterialButton(
        color: color,
        disabledColor: AppColorsPallette.secondaryColors[3],
        shape: getButtonShape(isRectangular, isBorderEnabled, borderColor),
        height: height,
        minWidth: minWidth,
        onPressed: isLoading ? () {} : () => onTap(),
        child: isLoading
            ? Center(
                child: Padding(
                  padding: const EdgeInsets.all(AppSpacings.mediumPadding),
                  child: SizedBox(
                    width: 20,
                    height: 20,
                    child: CircularProgressIndicator(
                      color: loadingColor,
                    ),
                  ),
                ),
              )
            : Text(label,
                style: AppTypography.appFont(
                  color: labelColor,
                  fontWeight: FontWeight.bold,
                  fontSize: fontSize,
                )),
      ),
    );
  }

  dynamic getButtonShape(bool isRectangular, bool isBorderEnabled, Color borderColor) {
    if (isRectangular) {
      return RoundedRectangleBorder(
        side: isBorderEnabled ? BorderSide(color: borderColor) : BorderSide.none,
        borderRadius: BorderRadius.circular(radiusValue),
      );
    } else {
      return const CircleBorder();
    }
  }
}
