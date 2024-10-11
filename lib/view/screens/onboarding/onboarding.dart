import 'package:flutter/material.dart';

import 'package:yuko_anime/utils/Go.dart';
import 'package:yuko_anime/utils/constants.dart';
import 'package:yuko_anime/view/common/button_widget.dart';
import 'package:yuko_anime/view/screens/home/home.dart';

import '../../../utils/images_strings.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
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
                  height: AppSizes.mediumSpacing,
                ),
                const Text(
                  "All in One Place!",
                  style: TextStyle(color: Colors.white, fontSize: AppTypography.appFontSize2),
                ),
                CommonButton(
                  onTap: () {
                    Go.to(context, const HomeScreen());
                  },
                  label: 'Get Started',
                  height: 50,
                  labelColor: AppColorsPallette.darkThemeColors[0],
                  horizontalPadding: AppSizes.mediumPadding,
                  verticalPadding: AppSizes.mediumPadding,
                  minWidth: double.maxFinite,
                  radiusValue: AppSizes.extraSmallRadius,
                  color: AppColorsPallette.primaryColors[0],
                ),
                CommonButton(
                    onTap: () {},
                    label: 'login',
                    height: 50,
                    isBorderEnabled: true,
                    borderColor: AppColorsPallette.primaryColors[0],
                    horizontalPadding: AppSizes.mediumPadding,
                    verticalPadding: AppSizes.mediumPadding,
                    minWidth: double.maxFinite,
                    radiusValue: AppSizes.extraSmallRadius,
                    color: Colors.transparent)
              ],
            ),
          )
        ],
      ),
    );
  }
}
