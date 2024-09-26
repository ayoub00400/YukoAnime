import 'package:flutter/material.dart';
import 'package:template_project/utils/constants.dart';
import 'package:template_project/view/screens/profile_settings/widgets/settings_zone.dart';

class SubscriptionSection extends StatelessWidget {
  const SubscriptionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SettingsZone(
      bgColor: AppColorsPallette.primaryColors.first,
      children: [
        Text(
          "Get Premium Membership",
          style: AppTypography.appFont(
              fontWeight: AppTypography.appFontBold,
              color: AppColorsPallette.lightThemeColors[0],
              fontSize: AppTypography.appFontSize2),
        ),
        const SizedBox(
          height: AppSizes.extraSmallSpacing,
        ),
        Text(
          "Check Packages or Start Free Trial ",
          style: AppTypography.appFont(
              fontWeight: AppTypography.appFontRegular,
              color: AppColorsPallette.darkThemeColors[1],
              fontSize: AppTypography.appFontSize3),
        )
      ],
    );
  }
}
