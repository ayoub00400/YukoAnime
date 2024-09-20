import 'package:flutter/material.dart';
import 'package:template_project/view/common/button_widget.dart';

import '../../utils/constants.dart';
import '../../utils/extensions/app_context_helper.dart';

class CommonIconButton extends CommonButton {
  IconData? trailingIcon;
  Function? onIconTapped;

  CommonIconButton(
      {super.key,
      required super.onTap,
      super.isLoading,
      required super.label,
      super.color,
      required super.isBorderEnabled,
      required super.borderColor,
      super.labelColor = Colors.white,
      required super.height,
      super.loadingColor = Colors.white,
      super.minWidth = 100,
      required super.radiusValue,
      super.isRectangular = true,
      this.trailingIcon,
      this.onIconTapped});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        super.build(context),
        IconButton(
          style: ButtonStyle(
            shape: MaterialStatePropertyAll(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(AppSpacings.smallRadius),
              ),
            ),
          ),
          onPressed: () => onIconTapped,
          icon: const Icon(Icons.abc),
        )
      ],
    );
  }
}
