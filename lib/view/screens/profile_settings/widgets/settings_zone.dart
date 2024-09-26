import 'package:flutter/material.dart';

import '../../../../utils/constants.dart';

class SettingsZone extends StatelessWidget {
  final List<Widget> children;
  final Color bgColor;
  const SettingsZone({super.key, this.children = const [], this.bgColor = Colors.transparent});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppSizes.mediumSpacing),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(AppSizes.extraSmallRadius),
      ),
      width: double.maxFinite,
      child: Column(mainAxisSize: MainAxisSize.min, children: children),
    );
  }
}
