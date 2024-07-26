import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project_calendar/shared/config/styles.dart';

class AppThemes {
  static const String fontFamily = 'Urbanist';

  static const Color main = Color(0xFF191D2B);
  static const Color mainLight = Color(0xFFD0D5DC);

  static const Color scaffold = Colors.white;
  static const Color scaffoldSecondary = Color(0xFFF6F7F8);

  static const Color fontMain = Color(0xFF191D2B);
  static const Color fontSecondary = Color(0xFF96A0B5);

  static const Color blue = Color(0xFF3A9ADE);
  static const Color blueLight = Color(0xFF5EACE4);

  static const Color green = Color(0xFF3F8B8D);
  static const Color greenLight = Color(0xFF58B2B4);

  static const Color red = Color(0xFFDD4A4A);
  static const Color redLight = Color(0xFFE87777);

  static const Color taskPurple = Color(0xFFD08CDF);
  static const Color taskPurpleLight = Color(0xFFF9F1FB);

  static const Color taskOrange = Color(0xFFFD7722);
  static const Color taskOrangeLight = Color(0xFFFEDFCC);

  static const Color taskGreen = Color(0xFF5ECEB3);
  static const Color taskGreenLight = Color(0xFFEBF9F5);

  static const Color checkColor = Color(0xFF5ECEB3);
  static const Color notificationColor = Color(0xFFDD4A4A);
  static const Color borderColor = Color(0xFFE8EAEE);

  static const List<Color> mainGradient = [mainLight, main];

  static lightTheme(BuildContext context) => ThemeData(
        brightness: Brightness.light,
        scaffoldBackgroundColor: scaffold,
        primaryColor: main,
        appBarTheme: AppBarTheme.of(context).copyWith(
          color: scaffoldSecondary,
          titleTextStyle: AppStyles.kB16TextStyle,
          iconTheme: const IconThemeData(color: main),
        ),
        textTheme: TextTheme(
          bodyMedium: AppStyles.kM14TextStyle,
          titleLarge: AppStyles.kSB16TextStyle,
          titleMedium: AppStyles.kM14TextStyle,
          titleSmall: AppStyles.kSB12TextStyle,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: main,
            foregroundColor: scaffold,
            disabledBackgroundColor: mainLight,
            disabledForegroundColor: scaffold,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.w)),
            padding: EdgeInsets.symmetric(vertical: 16.h),
            textStyle: AppStyles.kB16TextStyle,
          ),
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      );

  static darkTheme(BuildContext context) => ThemeData(
        brightness: Brightness.dark,
        fontFamily: fontFamily,
        scaffoldBackgroundColor: scaffoldSecondary,
        primaryColor: mainLight,
        appBarTheme: AppBarTheme.of(context).copyWith(
          color: scaffoldSecondary,
          titleTextStyle: AppStyles.kB16TextStyle,
          iconTheme: const IconThemeData(color: main),
        ),
        textTheme: TextTheme(
          bodyMedium: AppStyles.kM14TextStyle.copyWith(color: fontSecondary),
          titleLarge: AppStyles.kSB16TextStyle.copyWith(color: fontSecondary),
          titleMedium: AppStyles.kM14TextStyle.copyWith(color: fontSecondary),
          titleSmall: AppStyles.kSB12TextStyle.copyWith(color: fontSecondary),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: main,
            foregroundColor: scaffold,
            disabledBackgroundColor: mainLight,
            disabledForegroundColor: scaffold,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.w)),
            padding: EdgeInsets.symmetric(vertical: 16.h),
            textStyle: AppStyles.kB16TextStyle,
          ),
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      );
}
