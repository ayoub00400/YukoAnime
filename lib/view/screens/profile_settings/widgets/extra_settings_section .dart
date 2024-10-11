import 'package:flutter/material.dart';
import 'package:yuko_anime/utils/constants.dart';
import 'package:yuko_anime/view/screens/profile_settings/widgets/settings_zone.dart';

class ExtraSettingsSection extends StatelessWidget {
  const ExtraSettingsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SettingsZone(
          bgColor: AppColorsPallette.darkThemeColors[3].withOpacity(.3),
          children: [
            ListTile(
              dense: true,
              title: Row(
                children: [
                  Text(
                    "Notification",
                    style: AppTypography.appFont(
                        color: AppColorsPallette.lightThemeColors[0], fontSize: AppTypography.appFontSize3),
                  ),
                  const Spacer(),
                  Text(
                    "on",
                    softWrap: true,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: AppTypography.appFont(
                        color: AppColorsPallette.lightThemeColors[0], fontSize: AppTypography.appFontSize3),
                  ),
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
                    "Streaming Quality",
                    style: AppTypography.appFont(
                        color: AppColorsPallette.lightThemeColors[0], fontSize: AppTypography.appFontSize3),
                  ),
                  const Spacer(),
                  Text(
                    "HD",
                    softWrap: true,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: AppTypography.appFont(
                        color: AppColorsPallette.lightThemeColors[0], fontSize: AppTypography.appFontSize3),
                  ),
                ],
              ),
              trailing: const Icon(Icons.keyboard_arrow_right_rounded),
            ),
            ListTile(
              dense: true,
              title: Row(
                children: [
                  Text(
                    "Subtitles/CC Languages",
                    style: AppTypography.appFont(
                        color: AppColorsPallette.lightThemeColors[0], fontSize: AppTypography.appFontSize3),
                  ),
                  const Spacer(),
                  SizedBox(
                      width: 50,
                      child: Text(
                        "English",
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
            ListTile(
              dense: true,
              title: Row(
                children: [
                  Text(
                    "Subtitles/CC Languages",
                    style: AppTypography.appFont(
                        color: AppColorsPallette.lightThemeColors[0], fontSize: AppTypography.appFontSize3),
                  ),
                  const Spacer(),
                  SizedBox(
                      width: 50,
                      child: Text(
                        "English",
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
            ListTile(
              dense: true,
              title: Row(
                children: [
                  Text(
                    "Download Quality",
                    style: AppTypography.appFont(
                        color: AppColorsPallette.lightThemeColors[0], fontSize: AppTypography.appFontSize3),
                  ),
                  const Spacer(),
                  Text(
                    "HD",
                    softWrap: true,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: AppTypography.appFont(
                        color: AppColorsPallette.lightThemeColors[0], fontSize: AppTypography.appFontSize3),
                  ),
                ],
              ),
              trailing: const Icon(Icons.keyboard_arrow_right_rounded),
            ),
          ],
        ),
        const SizedBox(
          height: AppSizes.mediumSpacing,
        ),
        SettingsZone(
          bgColor: AppColorsPallette.darkThemeColors[3].withOpacity(.3),
          children: [
            ListTile(
              dense: true,
              title: Row(
                children: [
                  Text(
                    "Connected Devices",
                    style: AppTypography.appFont(
                        color: AppColorsPallette.lightThemeColors[0], fontSize: AppTypography.appFontSize3),
                  ),
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
                    "Need Help ?",
                    style: AppTypography.appFont(
                        color: AppColorsPallette.lightThemeColors[0], fontSize: AppTypography.appFontSize3),
                  ),
                ],
              ),
              trailing: const Icon(Icons.keyboard_arrow_right_rounded),
            ),
          ],
        ),
      ],
    );
  }
}
