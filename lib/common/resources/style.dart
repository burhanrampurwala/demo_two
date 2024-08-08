

import 'package:demo_two/common/resources/app_color.dart';
import 'package:flutter/material.dart';

import '../dimensions/font_size.dart';

class Style {
  // Bars
  static TextStyle appBarTitleStyle({Color? color}) {
    return TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: title,
      color: color ?? AppColor.colorPrimary,
    );
  }
  static TextStyle extraLargeTitleStyle({Color? color}) {
    return TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: titleLarge,
      color: color ?? AppColor.colorPrimary,
    );
  }

  // Header, Sub-header, and body
  static TextStyle titleStyle({Color? color}) {
    return TextStyle(

      fontWeight: FontWeight.w400,
      fontSize: headerTitle,
      color: color ?? AppColor.colorPrimary,
    );
  }

  static TextStyle titleBoldStyle({Color? color}) {
    return TextStyle(

      fontWeight: FontWeight.bold,
      fontSize: headerTitle,
      color: color ?? AppColor.colorPrimary,
    );
  }

  static TextStyle subTitleStyle({Color? color}) {
    return TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: subHeaderTitle,
      color: color ?? AppColor.colorAccent,
    );
  }

  static TextStyle subTitleBoldStyle({Color? color}) {
    return TextStyle(

      fontWeight: FontWeight.bold,
      fontSize: subHeaderTitle,
      color: color ?? AppColor.colorAccent,
    );
  }

  static TextStyle paragraphStyle({Color? color}) {
    return TextStyle(

      fontWeight: FontWeight.w400,
      fontSize: normal,
      color: color ?? AppColor.colorTertiaryText,
    );
  }

  //Textfields
  static TextStyle hintStyle() {
    return TextStyle(

      fontWeight: FontWeight.w400,
      fontSize: normal,
      color: AppColor.colorTertiaryText,
    );
  }

  static TextStyle errorStyle({Color? color}) {
    return TextStyle(

      fontWeight: FontWeight.w400,
      fontSize: normal,
      color: color ?? AppColor.colorError,
    );
  }

  static TextStyle textFieldInputStyle() {
    return TextStyle(

      fontWeight: FontWeight.w400,
      fontSize: normal,
      color: AppColor.colorPrimary,
    );
  }

  static TextStyle labelStyle({Color? color}) {
    return TextStyle(

      fontWeight: FontWeight.w400,
      fontSize: regular,
      color: color ?? AppColor.colorPrimary,
    );
  }

  // buttonLabel
  // static TextStyle buttonLabel({required ButtonSize buttonSize, Color? color}) {
  //   return TextStyle(
  //
  //     fontWeight: FontWeight.w400,
  //     fontSize: buttonSize == ButtonSize.large
  //         ? headerTitle
  //         : buttonSize == ButtonSize.medium
  //         ? subHeaderTitle
  //         : regular,
  //     color: color ?? AppColor.colorPrimaryInverse,
  //   );
  // }

  static TextStyle textButtonStyle({Color? color}) {
    return TextStyle(

      fontWeight: FontWeight.w400,
      fontSize: subHeaderTitle,
      color: color ?? AppColor.colorSecondaryText,
    );
  }

  static TextStyle menuCardLabelStyle({Color? color}) {
    return TextStyle(

      fontWeight: FontWeight.w400,
      fontSize: regular,
      color: color ?? AppColor.colorAccent,
    );
  }

  static TextStyle dropdownTitlesStyle({Color? color}) {
    return TextStyle(

      fontWeight: FontWeight.w400,
      fontSize: normal,
      color: AppColor.colorPrimary,
    );
  }

  static TextStyle underlinedText({Color? color}) {
    return TextStyle(
        color: color ?? AppColor.colorPrimaryInverse,
        decoration: TextDecoration.underline,
        fontSize: normal);
  }
}