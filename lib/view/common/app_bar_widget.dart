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
      height: 60,
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          leading ?? const SizedBox(),
          const SizedBox(
            width: AppSizes.smallSpacing,
          ),
          title,
          const Spacer(),
          if (trailling != null) Row(children: [...trailling!]),
        ],
      ),
    );
  }
}
