import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project_calendar/shared/config/styles.dart';
import 'package:project_calendar/shared/config/themes.dart';
import 'package:project_calendar/shared/enums/social_provider.dart';

class SocialLoginButton extends StatelessWidget {
  final SocialProvider provider;
  final Function()? onTap;
  const SocialLoginButton({super.key, required this.provider, this.onTap});

  double get iconSpace => 48.w;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      customBorder: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.h),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.h),
          border: Border.all(color: AppThemes.borderColor, width: 1.5.w),
        ),
        padding: EdgeInsets.symmetric(vertical: 16.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: iconSpace,
              child: Image.asset(
                provider.imageAsset,
                height: 24.h,
              ),
            ),
            Text(
              'Continue with ${provider.label}',
              style: AppStyles.kB16TextStyle,
            ),
            SizedBox(
              width: iconSpace,
            ),
          ],
        ),
      ),
    );
  }
}
