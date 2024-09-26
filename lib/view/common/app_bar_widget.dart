import 'package:flutter/material.dart';

import '../../utils/constants.dart';

class AppBarWidget extends StatelessWidget {
  final Widget title;
  final Widget? leading;
  final List<Widget>? trailling;
  final Color bgColor;

  const AppBarWidget({
    super.key,
    required this.title,
    this.leading,
    this.trailling,
    required this.bgColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: bgColor,
      width: double.maxFinite,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        textBaseline: TextBaseline.alphabetic,
        children: [
          leading ?? const SizedBox(),
          const SizedBox(
            width: AppSizes.smallSpacing,
          ),
          title,
          const Spacer(),
          if (trailling != null) Row(crossAxisAlignment: CrossAxisAlignment.center, children: [...trailling!]),
        ],
      ),
    );
  }
}
