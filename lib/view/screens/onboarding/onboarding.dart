import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:template_project/utils/constants.dart';
import 'package:template_project/view/common/button_widget.dart';

import '../../../utils/images_strings.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                isAntiAlias: true,
                fit: BoxFit.cover,
                image: AssetImage(
                  AppImages.onBoardingBg,
                ),
              )),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 2 / 3,
              width: double.maxFinite,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [Colors.black87, Colors.black54, Colors.transparent])),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    "Watch, Read, Shop, Connect",
                    style: TextStyle(color: Colors.white, fontSize: AppTypography.appFontSize1),
                  ),
                  const SizedBox(
                    height: AppSpacings.mediumSpacing,
                  ),
                  const Text(
                    "All in One Place!",
                    style: TextStyle(color: Colors.white, fontSize: AppTypography.appFontSize2),
                  ),
                  CommonButton(
                    onTap: () {},
                    label: 'Get Started',
                    height: 50,
                    labelColor: AppColorsPallette.darkThemeColors[0],
                    horizontalPadding: AppSpacings.mediumPadding,
                    verticalPadding: AppSpacings.mediumPadding,
                    minWidth: double.maxFinite,
                    radiusValue: AppSpacings.extraSmallRadius,
                    color: AppColorsPallette.secondaryColors[0],
                  ),
                  CommonButton(
                      onTap: () {},
                      label: 'login',
                      height: 50,
                      isBorderEnabled: true,
                      borderColor: AppColorsPallette.secondaryColors[0],
                      horizontalPadding: AppSpacings.mediumPadding,
                      verticalPadding: AppSpacings.mediumPadding,
                      minWidth: double.maxFinite,
                      radiusValue: AppSpacings.extraSmallRadius,
                      color: Colors.transparent)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
