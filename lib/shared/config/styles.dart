import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project_calendar/shared/config/themes.dart';

class AppStyles {
  static TextStyle toastTextStyle = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 14.sp,
    color: Colors.white,
  );
  static const TextStyle _textStyle = TextStyle(
    color: AppThemes.fontMain,
    fontFamily: AppThemes.fontFamily,
  );

  // BOLD
  static TextStyle kB24TextStyle = _textStyle.copyWith(
    fontWeight: FontWeight.w700,
    fontSize: 24.sp,
  );
  static TextStyle kB18TextStyle = _textStyle.copyWith(
    fontWeight: FontWeight.w700,
    fontSize: 18.sp,
  );
  static TextStyle kB16TextStyle = _textStyle.copyWith(
    fontWeight: FontWeight.w700,
    fontSize: 16.sp,
  );
  static TextStyle kB14TextStyle = _textStyle.copyWith(
    fontWeight: FontWeight.w700,
    fontSize: 14.sp,
  );
  static TextStyle kB12TextStyle = _textStyle.copyWith(
    fontWeight: FontWeight.w700,
    fontSize: 12.sp,
  );

  // SIMIBOLD
  static TextStyle kSB24TextStyle = _textStyle.copyWith(
    fontWeight: FontWeight.w600,
    fontSize: 24.sp,
  );
  static TextStyle kSB18TextStyle = _textStyle.copyWith(
    fontWeight: FontWeight.w600,
    fontSize: 18.sp,
  );
  static TextStyle kSB16TextStyle = _textStyle.copyWith(
    fontWeight: FontWeight.w600,
    fontSize: 16.sp,
  );
  static TextStyle kSB14TextStyle = _textStyle.copyWith(
    fontWeight: FontWeight.w600,
    fontSize: 14.sp,
  );
  static TextStyle kSB12TextStyle = _textStyle.copyWith(
    fontWeight: FontWeight.w600,
    fontSize: 12.sp,
  );

  // Medium
  static TextStyle kM24TextStyle = _textStyle.copyWith(
    fontWeight: FontWeight.w500,
    fontSize: 24.sp,
  );
  static TextStyle kM18TextStyle = _textStyle.copyWith(
    fontWeight: FontWeight.w500,
    fontSize: 18.sp,
  );
  static TextStyle kM16TextStyle = _textStyle.copyWith(
    fontWeight: FontWeight.w500,
    fontSize: 16.sp,
  );
  static TextStyle kM14TextStyle = _textStyle.copyWith(
    fontWeight: FontWeight.w500,
    fontSize: 14.sp,
  );
  static TextStyle kM12TextStyle = _textStyle.copyWith(
    fontWeight: FontWeight.w500,
    fontSize: 12.sp,
  );

  // REGULAR
  static TextStyle kR24TextStyle = _textStyle.copyWith(
    fontWeight: FontWeight.w400,
    fontSize: 24.sp,
  );
  static TextStyle kR18TextStyle = _textStyle.copyWith(
    fontWeight: FontWeight.w400,
    fontSize: 18.sp,
  );
  static TextStyle kR16TextStyle = _textStyle.copyWith(
    fontWeight: FontWeight.w400,
    fontSize: 16.sp,
  );
  static TextStyle kR14TextStyle = _textStyle.copyWith(
    fontWeight: FontWeight.w400,
    fontSize: 14.sp,
  );
  static TextStyle kR12TextStyle = _textStyle.copyWith(
    fontWeight: FontWeight.w400,
    fontSize: 12.sp,
  );
}
