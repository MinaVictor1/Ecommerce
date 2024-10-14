import 'package:ecommerce/core/theme/colors.dart';
import 'package:ecommerce/core/theme/font_weight.dart';
import 'package:flutter/material.dart';

class TextStyles {
  static TextStyle font24BlackBold = const TextStyle(
    fontSize: 24,
    fontWeight: FontWeightHelper.bold,
    color: Colors.black,
  );
  static TextStyle font14DarkBlueMedium = const TextStyle(
    fontSize: 14,
    fontWeight: FontWeightHelper.bold,
    color: ColorsManager.darkBlue,
  );
  static TextStyle font15grayRegular = const TextStyle(
    fontSize: 15,
    fontWeight: FontWeightHelper.regular,
    color: ColorsManager.gray,
  );
}
//font14DarkBlueMedium