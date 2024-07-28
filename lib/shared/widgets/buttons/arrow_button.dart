import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project_calendar/shared/config/themes.dart';

class ArrowButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTap;
  const ArrowButton({super.key, required this.icon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(8.w),
          border: Border.all(
            width: 1.5.w,
            color: AppThemes.borderColor,
          ),
        ),
        padding: EdgeInsets.all(6.w),
        child: Icon(
          icon,
          color: AppThemes.main,
          size: 16.w,
        ),
      ),
    );
  }
}
