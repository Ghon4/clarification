import 'package:demop/utils/resources/color_manger.dart';
import 'package:demop/utils/resources/font_manager.dart';
import 'package:demop/utils/resources/values_manager.dart';
import 'package:flutter/material.dart';

class SwissButton extends StatelessWidget {
  const SwissButton({
    Key? key,
    required this.buttonText,
    this.onPressFunction,
    this.buttonWidth,
    this.buttonHeight,
    this.buttonBackGroundColor,
    this.buttonRadius,
    this.buttonTextStyle,
    this.buttonForegroundColor,
    this.buttonDisabledBackgroundColor,
    this.buttonDisabledForegroundColor,
    this.buttonShadowColor,
    this.borderColors,
    this.haveShadow,
  }) : super(key: key);
  final void Function()? onPressFunction;
  final String buttonText;
  final double? buttonWidth, buttonHeight, buttonRadius;
  final Color? buttonBackGroundColor,
      buttonForegroundColor,
      buttonDisabledBackgroundColor,
      buttonDisabledForegroundColor,
      buttonShadowColor,
      borderColors;
  final TextStyle? buttonTextStyle;
  final bool? haveShadow;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(buttonRadius ?? AppRadius.r8),
          side: BorderSide(color: borderColors ?? Colors.transparent),
        ),
        minimumSize: Size(
          buttonWidth ?? AppSize.s362,
          buttonHeight ?? AppSize.s48,
        ),
        backgroundColor: buttonBackGroundColor ?? ColorManager.white,
        foregroundColor: buttonForegroundColor ?? ColorManager.white,
        disabledForegroundColor:
            buttonDisabledForegroundColor ?? ColorManager.white,
      ),
      onPressed: onPressFunction,
      child: Text(
        buttonText,
        style: buttonTextStyle ??
            TextStyle(color: ColorManager.white, fontSize: FontSize.s14),
      ),
    );
  }
}
