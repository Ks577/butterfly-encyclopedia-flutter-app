import 'device_info.dart';
import 'package:flutter/material.dart';

class AppSizes {
  // Заголовок в карточке
  static double titleCard(BuildContext context) {
    if (DeviceInfo.isPhonePortrait(context)) return 17;
    if (DeviceInfo.isPhoneLandscape(context)) return 15;
    if (DeviceInfo.isTabletPortrait(context)) return 23;
    if (DeviceInfo.isTabletLandscape(context)) return 38;
    return 42;
  }

  // Текст в раскрытой карточке
  static double textInfo(BuildContext context) {
    if (DeviceInfo.isPhonePortrait(context)) return 14;
    if (DeviceInfo.isPhoneLandscape(context)) return 12;
    if (DeviceInfo.isTabletPortrait(context)) return 15;
    if (DeviceInfo.isTabletLandscape(context)) return 30;
    return 32;
  }

  // Заголовок в деталях
  static double titleDescription(BuildContext context) {
    if (DeviceInfo.isPhonePortrait(context)) return 22;
    if (DeviceInfo.isPhoneLandscape(context)) return 20;
    if (DeviceInfo.isTabletPortrait(context)) return 25;
    if (DeviceInfo.isTabletLandscape(context)) return 38;
    return 40;
  }

  // Текст в описании
  static double textDescription(BuildContext context) {
    if (DeviceInfo.isPhonePortrait(context)) return 16;
    if (DeviceInfo.isPhoneLandscape(context)) return 14;
    if (DeviceInfo.isTabletPortrait(context)) return 21;
    if (DeviceInfo.isTabletLandscape(context)) return 33;
    return 35;
  }

  // Текст в кнопке
  static double buttonText(BuildContext context) {
    if (DeviceInfo.isTabletPortrait(context)) return 10;
    if (DeviceInfo.isTabletLandscape(context)) return 22;
    if (DeviceInfo.isPhonePortrait(context)) return 12;
    if (DeviceInfo.isPhoneLandscape(context)) return 14;
    return 14;
  }

  // Отступы
  static double smallPadding(BuildContext context) {
    if (DeviceInfo.isTabletPortrait(context)) return 13;
    if (DeviceInfo.isTabletLandscape(context)) return 14;
    return 9;
  }

  static double mediumPadding(BuildContext context) => 20;

  static double largePadding(BuildContext context) => 27;

  static double detailHorizontalPadding(BuildContext context) => 11;

  static double detailTopPadding(BuildContext context) => 10;

  static double detailBottomPadding(BuildContext context) => 10;

  // Внутренние отступы панели деталей
  static EdgeInsets detailPanelOuterPadding(BuildContext context) {
    if (DeviceInfo.isPhonePortrait(context)) return const EdgeInsets.all(8);
    if (DeviceInfo.isPhoneLandscape(context)) {
      return const EdgeInsets.fromLTRB(12, 10, 15, 10);
    }
    if (DeviceInfo.isTabletPortrait(context)) {
      return const EdgeInsets.fromLTRB(16, 12, 18, 12);
    }
    if (DeviceInfo.isTabletLandscape(context)) {
      return const EdgeInsets.fromLTRB(20, 14, 36, 14);
    }
    return const EdgeInsets.all(12);
  }

  // Внутренние отступы панели деталей
  static EdgeInsets detailPanelInnerPadding(BuildContext context) {
    if (DeviceInfo.isPhonePortrait(context)) {
      return const EdgeInsets.symmetric(horizontal: 10, vertical: 8);
    }
    if (DeviceInfo.isPhoneLandscape(context)) {
      return const EdgeInsets.symmetric(horizontal: 14, vertical: 12);
    }
    if (DeviceInfo.isTabletPortrait(context)) {
      return const EdgeInsets.symmetric(horizontal: 8, vertical: 16);
    }
    if (DeviceInfo.isTabletLandscape(context)) {
      return const EdgeInsets.symmetric(horizontal: 22, vertical: 18);
    }
    return const EdgeInsets.symmetric(horizontal: 12, vertical: 10);
  }

  // Отступы в кнопке
  static double buttonHorizontalPadding(BuildContext context) {
    if (DeviceInfo.isTabletPortrait(context)) return 22;
    if (DeviceInfo.isTabletLandscape(context)) return 24;
    if (DeviceInfo.isPhonePortrait(context)) return 16;
    return 14;
  }

  static double buttonVerticalPadding(BuildContext context) {
    if (DeviceInfo.isTabletPortrait(context)) return 14;
    if (DeviceInfo.isTabletLandscape(context)) return 16;
    if (DeviceInfo.isPhonePortrait(context)) return 10;
    return 8;
  }

  // Ширина карточки
  static double cardWidth(BuildContext context) {
    if (DeviceInfo.isPhonePortrait(context)) return double.infinity;
    if (DeviceInfo.isPhoneLandscape(context)) {
      return MediaQuery.of(context).size.width * 0.50;
    }
    if (DeviceInfo.isTabletPortrait(context)) {
      return MediaQuery.of(context).size.width * 0.47;
    }
    if (DeviceInfo.isTabletLandscape(context)) {
      return MediaQuery.of(context).size.width * 0.45;
    }
    return MediaQuery.of(context).size.width * 0.47;
  }

  // Размер блока для вмещения заголовка карточки
  static double cardHeaderHeight(BuildContext context) {
    if (DeviceInfo.isPhonePortrait(context)) return 62;
    if (DeviceInfo.isPhoneLandscape(context)) return 52;
    if (DeviceInfo.isTabletPortrait(context)) return 80;
    if (DeviceInfo.isTabletLandscape(context)) return 90;
    return 100;
  }

  // Размер картинки в карточке
  static double cardImageSize(BuildContext context) {
    if (DeviceInfo.isPhonePortrait(context)) return 51;
    if (DeviceInfo.isPhoneLandscape(context)) return 45;
    if (DeviceInfo.isTabletPortrait(context)) return 63;
    if (DeviceInfo.isTabletLandscape(context)) return 75;
    return 60;
  }

  // Смещения и мультипликаторы
  static double cardImageMultiplier(BuildContext context) => 2.0;

  static double cardTextLeftPaddingMultiplier(BuildContext context) {
    if (DeviceInfo.isPhonePortrait(context)) return 1.77;
    if (DeviceInfo.isPhoneLandscape(context)) return 2.0;
    if (DeviceInfo.isTabletPortrait(context)) return 1.80;
    if (DeviceInfo.isTabletLandscape(context)) return 1.85;
    return 1.15;
  }

  static double cardTextTopPaddingMultiplier(BuildContext context) {
    if (DeviceInfo.isPhonePortrait(context)) return 0.15;
    if (DeviceInfo.isPhoneLandscape(context)) return 0.1;
    if (DeviceInfo.isTabletPortrait(context)) return 0.15;
    if (DeviceInfo.isTabletLandscape(context)) return 0.18;
    return 0.15;
  }

  static double cardRadius(BuildContext context) => 18;

  static double detailPanelWidth(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    if (DeviceInfo.isPhonePortrait(context)) return w * 0.60;
    if (DeviceInfo.isPhoneLandscape(context)) return w * 0.45;
    if (DeviceInfo.isTabletPortrait(context)) return w * 0.35;
    if (DeviceInfo.isTabletLandscape(context)) return w * 0.40;
    return w * 0.3;
  }

  // Картинка в деталях
  static double detailImageWidth(BuildContext context) {
    if (DeviceInfo.isPhonePortrait(context)) {
      return MediaQuery.of(context).size.width * 0.9;
    }
    if (DeviceInfo.isPhoneLandscape(context)) {
      return MediaQuery.of(context).size.width * 0.37;
    }
    if (DeviceInfo.isTabletPortrait(context)) {
      return MediaQuery.of(context).size.width * 0.55;
    }
    if (DeviceInfo.isTabletLandscape(context)) {
      return MediaQuery.of(context).size.width * 0.49;
    }
    return MediaQuery.of(context).size.width * 0.3;
  }

  static double detailImageHeight(BuildContext context) {
    if (DeviceInfo.isPhonePortrait(context)) {
      return MediaQuery.of(context).size.height * 0.30;
    }
    if (DeviceInfo.isPhoneLandscape(context)) {
      return MediaQuery.of(context).size.height * 0.50;
    }
    if (DeviceInfo.isTabletPortrait(context)) {
      return MediaQuery.of(context).size.height * 0.20;
    }
    if (DeviceInfo.isTabletLandscape(context)) {
      return MediaQuery.of(context).size.height * 0.35;
    }
    return MediaQuery.of(context).size.height * 0.6;
  }

  // Кнопка
  static double buttonHeight(BuildContext context) {
    if (DeviceInfo.isTabletPortrait(context)) return 40;
    if (DeviceInfo.isTabletLandscape(context)) return 64;
    if (DeviceInfo.isPhonePortrait(context)) return 44;
    if (DeviceInfo.isPhoneLandscape(context)) return 38;
    return 38;
  }

  static double buttonIcon(BuildContext context) {
    if (DeviceInfo.isTabletPortrait(context)) return 20;
    if (DeviceInfo.isTabletLandscape(context)) return 26;
    if (DeviceInfo.isPhonePortrait(context)) return 22;
    if (DeviceInfo.isPhoneLandscape(context)) return 20;
    return 20;
  }

  // 3D модель
  static double modelWidth(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    if (DeviceInfo.isPhonePortrait(context)) return w * 0.95;
    if (DeviceInfo.isPhoneLandscape(context)) return w * 0.75;
    if (DeviceInfo.isTabletPortrait(context)) return w * 0.7;
    if (DeviceInfo.isTabletLandscape(context)) return w * 0.6;
    return w * 0.6;
  }

  static double modelHeight(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    if (DeviceInfo.isPhonePortrait(context)) return h * 0.6;
    if (DeviceInfo.isPhoneLandscape(context)) return h * 0.85;
    if (DeviceInfo.isTabletPortrait(context)) return h * 0.75;
    if (DeviceInfo.isTabletLandscape(context)) return h * 0.8;
    return h * 0.7;
  }

  static EdgeInsets modelPadding(BuildContext context) {
    if (DeviceInfo.isTabletPortrait(context)) return const EdgeInsets.all(24);
    if (DeviceInfo.isTabletLandscape(context)) return const EdgeInsets.all(26);
    return const EdgeInsets.all(12);
  }
}
