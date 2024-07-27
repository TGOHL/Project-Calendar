import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project_calendar/shared/config/styles.dart';
import 'package:project_calendar/shared/config/themes.dart';
import 'package:project_calendar/shared/utils/clippers/triangle.dart';

class ProductivityBarPercentage extends StatelessWidget {
  final int percentage;
  const ProductivityBarPercentage({super.key, required this.percentage});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipPath(
          clipper: ProductivityBarPercentageClipper(triangleSize: Size(16.w, 5.h), radius: 8.w),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 4.h).copyWith(bottom: 9.h),
            color: AppThemes.main,
            child: Text(
              '$percentage%',
              style: AppStyles.kB14TextStyle.copyWith(color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
