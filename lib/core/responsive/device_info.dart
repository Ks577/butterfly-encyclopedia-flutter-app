import 'package:flutter/material.dart';

class DeviceInfo {
  static bool isTablet(BuildContext context) {
    return MediaQuery.of(context).size.shortestSide >= 600;
  }

  static bool isPhonePortrait(BuildContext context) {
    return !isTablet(context) &&
        MediaQuery.of(context).orientation == Orientation.portrait;
  }

  static bool isPhoneLandscape(BuildContext context) {
    return !isTablet(context) &&
        MediaQuery.of(context).orientation == Orientation.landscape;
  }

  static bool isTabletPortrait(BuildContext context) {
    return isTablet(context) &&
        MediaQuery.of(context).orientation == Orientation.portrait;
  }

  static bool isTabletLandscape(BuildContext context) {
    return isTablet(context) &&
        MediaQuery.of(context).orientation == Orientation.landscape;
  }
}
