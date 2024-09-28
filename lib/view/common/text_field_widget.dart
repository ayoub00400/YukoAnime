import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../utils/constants.dart';
import '../../utils/extensions/app_context_helper.dart';

// ignore: must_be_immutable
class CommonTextField extends StatelessWidget {
  final Function()? onTap;
  final Function(String val)? onSub;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final Function validationFunc;
  final String? hintText;
  final String? label;
  final double height;
  final TextStyle? hintTextStyle;
  final TextStyle? labelTextStyle;
  final TextEditingController? controller;
  final double horizontalPadding;
  final double verticalPadding;
  final bool isObsecure;
  final bool isEnabled;
  final bool isReadOnly;
  final List<TextInputFormatter>? formatters;
  final TextInputType? keyBoadType;
  final FocusNode? fieldFocusNode;
  final bool isFilled;
  Color? fillColor;

  final double? width;

  final TextAlign textAlign;

  CommonTextField({
    super.key,
    this.controller,
    this.hintText,
    this.onTap,
    this.prefixIcon,
    this.suffixIcon,
    required this.validationFunc,
    this.height = 65,
    this.label,
    this.horizontalPadding = 0,
    this.verticalPadding = 0,
    this.hintTextStyle,
    this.labelTextStyle,
    this.isObsecure = false,
    this.isEnabled = true,
    this.formatters,
    this.isReadOnly = false,
    this.width = double.maxFinite,
    this.keyBoadType,
    this.fieldFocusNode,
    this.textAlign = TextAlign.start,
    this.isFilled = true,
    this.fillColor,
    this.onSub,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: verticalPadding,
          horizontal: horizontalPadding,
        ),
        child: TextFormField(
          onFieldSubmitted: onSub,
          focusNode: fieldFocusNode,
          keyboardType: keyBoadType,
          textAlign: textAlign,
          readOnly: isReadOnly,
          onTap: onTap,
          enabled: isEnabled,
          inputFormatters: formatters,
          controller: controller,
          obscureText: isObsecure,
          validator: (val) {
            return validationFunc(val);
          },
          decoration: InputDecoration(
            filled: isFilled,
            fillColor: fillColor ?? Colors.grey.shade200,
            contentPadding: const EdgeInsets.symmetric(
              vertical: AppSizes.smallPadding,
              horizontal: AppSizes.smallPadding,
            ),
            suffixIcon: suffixIcon,
            prefixIcon: prefixIcon,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(AppSizes.extraSmallRadius),
              borderSide: const BorderSide(color: Colors.transparent),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(AppSizes.extraSmallRadius),
              borderSide: const BorderSide(color: Colors.transparent),
            ),
            hintStyle: hintTextStyle,
            labelStyle: labelTextStyle,
            alignLabelWithHint: true,
            hintText: hintText,
            labelText: label,
          ),
          style: context.theme.textTheme.displaySmall!.copyWith(
            fontWeight: FontWeight.w400,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
