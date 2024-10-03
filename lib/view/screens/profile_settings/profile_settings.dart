import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../utils/constants.dart';
import '../../common/app_bar_widget.dart';
import 'widgets/confidential_infos_section.dart';
import 'widgets/extra_settings_section .dart';
import 'widgets/personal_infos_section.dart';
import 'widgets/settings_zone.dart';
import 'widgets/subscription_section.dart';

class ProfileSettingsScreen extends StatelessWidget {
  const ProfileSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColorsPallette.appBgColor,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(
            top: AppSizes.smallPadding, right: AppSizes.smallPadding, left: AppSizes.smallPadding),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              AppBarWidget(
                bgColor: Colors.transparent,
                leading: FaIcon(
                  Icons.arrow_back,
                  size: AppSizes.mediumIconSize,
                  color: AppColorsPallette.lightThemeColors[0],
                ),
                title: Text(
                  "Settings",
                  style: AppTypography.appFont(
                      fontWeight: AppTypography.appFontBold,
                      color: AppColorsPallette.lightThemeColors[0],
                      fontSize: AppTypography.appFontSize2),
                ),
                trailling: [
                  FaIcon(
                    Icons.more_vert,
                    size: AppSizes.mediumIconSize,
                    color: AppColorsPallette.lightThemeColors[0],
                  ),
                ],
              ),
              const SizedBox(
                height: AppSizes.mediumSpacing,
              ),
              const SubscriptionSection(),
              const SizedBox(
                height: AppSizes.mediumSpacing,
              ),
              const PersonalInfosSection(),
              const SizedBox(
                height: AppSizes.mediumSpacing,
              ),
              const ConfidentialInfosSection(),
              const SizedBox(
                height: AppSizes.mediumSpacing,
              ),
              const ExtraSettingsSection(),
              const SizedBox(
                height: AppSizes.mediumSpacing,
              ),
              SettingsZone(
                bgColor: AppColorsPallette.darkThemeColors[3].withOpacity(.3),
                children: [
                  ListTile(
                    dense: true,
                    leading: const Icon(
                      Icons.logout_rounded,
                      color: Colors.red,
                    ),
                    title: Text(
                      "Log Out",
                      style: AppTypography.appFont(color: Colors.red, fontSize: AppTypography.appFontSize3),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      )),
    );
  }
}
