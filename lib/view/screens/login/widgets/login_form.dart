import 'package:flutter/material.dart';

import '../../../../utils/constants.dart';
import '../../../common/button_widget.dart';
import '../../../common/text_field_widget.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: AppSizes.smallPadding, horizontal: AppSizes.smallPadding),
      padding: const EdgeInsets.symmetric(vertical: AppSizes.smallPadding, horizontal: AppSizes.smallPadding),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: AppSizes.mediumPadding,
          ),
          Text(
            "Log In",
            style:
                AppTypography.appFont(fontWeight: AppTypography.appFontSemiBold, fontSize: AppTypography.appFontSize1),
          ),
          const SizedBox(
            height: AppSizes.mediumPadding,
          ),
          CommonTextField(
            validationFunc: () {},
            hintText: "Email or Phone Number",
            isFilled: true,
            fillColor: AppColorsPallette.lightThemeColors[2].withOpacity(.2),
          ),
          const SizedBox(
            height: AppSizes.smallSpacing,
          ),
          CommonButton(
              onTap: () {},
              label: 'Log in',
              color: AppColorsPallette.primaryColors.first,
              height: 40,
              minWidth: double.maxFinite,
              radiusValue: AppSizes.extraSmallRadius),
          const SizedBox(
            height: AppSizes.smallSpacing,
          ),
          Divider(
            indent: MediaQuery.of(context).size.width * .5 / 6,
            endIndent: MediaQuery.of(context).size.width * .5 / 6,
          ),
          const SizedBox(
            height: AppSizes.mediumPadding,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
                4,
                (index) => const Padding(
                      padding: EdgeInsets.symmetric(horizontal: AppSizes.smallPadding),
                      child: CircleAvatar(
                        minRadius: 25,
                      ),
                    )),
          ),
          const SizedBox(height: AppSizes.mediumPadding)
        ],
      ),
    );
  }
}
