import 'package:flutter/material.dart';

import '../../utils/constants.dart';
import '../../utils/extensions/app_context_helper.dart';

class CommonButton extends StatelessWidget {
  final Function onTap;
  final bool isLoading;
  final double padding;
  final double height;
  final double minWidth;
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
    this.padding = 8,
    required this.label,
    this.color,
    this.labelColor = Colors.white,
    required this.height,
    this.loadingColor = Colors.white,
    this.minWidth = 100,
    required this.radiusValue,
    this.isRectangular = true,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: color,
      disabledColor: AppColorsPallette.secondaryColors[3],
      shape: getButtonShape(isRectangular),
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
          : Text(
              label,
              style: context.theme.textTheme.displaySmall!.copyWith(
                color: labelColor,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
    );
  }

  dynamic getButtonShape(bool isRectangular) {
    if (isRectangular) {
      return RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(radiusValue),
      );
    } else {
      return const CircleBorder();
    }
  }
}
