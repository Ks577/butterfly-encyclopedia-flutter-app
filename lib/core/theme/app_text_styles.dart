import 'package:flutter/material.dart';
import '../responsive/app_size.dart';

class AppTextStyles {
  static TextStyle cardTitle(BuildContext context, {bool selected = false}) {
    return TextStyle(
      fontFamily: "PlayfairDisplay",
      fontSize: AppSizes.titleCard(context),
      fontWeight: selected ? FontWeight.bold : FontWeight.w600,
      color: selected ? Colors.green.shade700 : Colors.black54,
    );
  }

  static TextStyle cardInfo(BuildContext context) {
    return TextStyle(
      fontFamily: "PlayfairDisplay",
      fontSize: AppSizes.textInfo(context),
      color: Colors.black54,
    );
  }

  static TextStyle detailTitle(BuildContext context) {
    return TextStyle(
      fontFamily: "ZenAntique",
      fontSize: AppSizes.titleDescription(context),
      fontWeight: FontWeight.bold,
      color: Colors.black54,
    );
  }

  static TextStyle detailDescription(BuildContext context) {
    return TextStyle(
      fontFamily: "ZenAntiqueSoft",
      fontSize: AppSizes.textDescription(context),
      color: Colors.black54,
      height: 2,
    );
  }
}
