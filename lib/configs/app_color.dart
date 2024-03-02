import 'package:flutter/material.dart';

@immutable
class AppColor extends ThemeExtension<AppColor> {
  final Color? primaryColor;

  const AppColor({
    required this.primaryColor,
  });

  @override
  AppColor copyWith({
    Color? primaryColor,
  }){
    return AppColor(
      primaryColor: primaryColor ?? primaryColor,
    );
  }

  @override
  AppColor lerp(ThemeExtension<AppColor>? other, double t){
    if (other is! AppColor) {
      return this;
    }
    return AppColor(
      primaryColor: Color.lerp(primaryColor, other.primaryColor, t),
    );
  }
}

class AppStaticColor {
  static const Color primaryColor = Color(0xFF5F67EA);
}