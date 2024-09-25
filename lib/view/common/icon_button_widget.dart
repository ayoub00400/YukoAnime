import 'package:flutter/material.dart';
import 'package:template_project/view/common/button_widget.dart';

import '../../utils/constants.dart';

// ignore: must_be_immutable
class CommonIconButton extends CommonButton {
  Icon trailingIcon;
  Function? onIconTapped;

  CommonIconButton(
      {super.key,
      required super.onTap,
      super.isLoading,
      required super.label,
      super.color,
      super.isBorderEnabled,
      super.borderColor,
      super.labelColor = Colors.white,
      required super.height,
      super.loadingColor = Colors.white,
      super.minWidth = 100,
      required super.radiusValue,
      super.isRectangular = true,
      required this.trailingIcon,
      super.contentPadding,
      this.onIconTapped});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        super.build(context),
        IconButton(
          style: const ButtonStyle(
            shape: WidgetStatePropertyAll(
              RoundedRectangleBorder(side: BorderSide(color: Colors.white)),
            ),
          ),
          onPressed: () => onIconTapped,
          icon: trailingIcon,
        )
      ],
    );
  }
}
