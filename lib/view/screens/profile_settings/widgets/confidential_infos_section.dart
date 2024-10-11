import 'package:flutter/material.dart';
import 'package:yuko_anime/utils/constants.dart';
import 'package:yuko_anime/view/screens/profile_settings/widgets/settings_zone.dart';

class ConfidentialInfosSection extends StatelessWidget {
  const ConfidentialInfosSection({super.key});

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
                "Change Email",
                style: AppTypography.appFont(
                    color: AppColorsPallette.lightThemeColors[0], fontSize: AppTypography.appFontSize3),
              ),
              const Spacer(),
              SizedBox(
                  width: 100,
                  child: Text(
                    "ayoublarbaoui004@gmail.com",
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
                "Change Password",
                style: AppTypography.appFont(
                    color: AppColorsPallette.lightThemeColors[0], fontSize: AppTypography.appFontSize3),
              ),
              const Spacer(),
              SizedBox(
                  width: 100,
                  child: Text(
                    "**********",
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
