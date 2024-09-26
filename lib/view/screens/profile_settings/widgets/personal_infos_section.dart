import 'package:flutter/material.dart';
import 'package:template_project/utils/constants.dart';
import 'package:template_project/view/screens/profile_settings/widgets/settings_zone.dart';

class PersonalInfosSection extends StatelessWidget {
  const PersonalInfosSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SettingsZone(
      bgColor: AppColorsPallette.darkThemeColors[3].withOpacity(.3),
      children: [
        ListTile(
          dense: true,
          title: Row(
            children: [
              Text(
                "Your Name",
                style: AppTypography.appFont(
                    color: AppColorsPallette.lightThemeColors[0], fontSize: AppTypography.appFontSize3),
              ),
              const Spacer(),
              SizedBox(
                  width: 100,
                  child: Text(
                    "Maria . L",
                    softWrap: true,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: AppTypography.appFont(
                        color: AppColorsPallette.lightThemeColors[0], fontSize: AppTypography.appFontSize3),
                  )),
            ],
          ),
          trailing: const Icon(Icons.keyboard_arrow_right_rounded),
        ),
        const SizedBox(
          height: AppSizes.extraSmallSpacing,
        ),
        ListTile(
          dense: true,
          title: Row(
            children: [
              Text(
                "UserName",
                style: AppTypography.appFont(
                    color: AppColorsPallette.lightThemeColors[0], fontSize: AppTypography.appFontSize3),
              ),
              const Spacer(),
              SizedBox(
                  width: 100,
                  child: Text(
                    "@Your way to be Monster",
                    softWrap: true,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: AppTypography.appFont(
                        color: AppColorsPallette.lightThemeColors[0], fontSize: AppTypography.appFontSize3),
                  )),
            ],
          ),
          trailing: const Icon(Icons.keyboard_arrow_right_rounded),
        ),
      ],
    );
  }
}
