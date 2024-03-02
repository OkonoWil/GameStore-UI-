import 'package:flutter/material.dart';
import 'package:gamestore_test_ui/configs/app_color.dart';

AppColor color(context) => Theme.of(context).extension<AppColor>()!;

ThemeData getAppTheme(
  {required BuildContext context, required bool isDarkTheme}
){
  return ThemeData(
    extensions:  const <ThemeExtension<AppColor>>[
      AppColor(
        primaryColor: AppStaticColor.primaryColor
      )
    ]
  );
}