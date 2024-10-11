import 'package:flutter/material.dart';

import 'package:yuko_anime/utils/constants.dart';

import '../../../utils/images_strings.dart';

import 'widgets/login_form.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const LoginForm(),
              const SizedBox(
                height: AppSizes.largePadding,
              ),
              RichText(
                  text: TextSpan(
                      text: "Don't have an account? ",
                      style: AppTypography.appFont(
                          color: AppColorsPallette.lightThemeColors[0], fontSize: AppTypography.appFontSize2),
                      children: [
                    TextSpan(
                      text: "Sign Up",
                      style: AppTypography.appFont(
                          color: AppColorsPallette.primaryColors[0], fontSize: AppTypography.appFontSize2),
                    )
                  ])),
              const SizedBox(
                height: AppSizes.largePadding,
              ),
            ],
          )
        ],
      ),
    );
  }
}
