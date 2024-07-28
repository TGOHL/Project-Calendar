import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:project_calendar/shared/config/styles.dart';
import 'package:project_calendar/shared/config/themes.dart';
import 'package:project_calendar/shared/widgets/utils/vertical_space.dart';

class DateTile extends StatelessWidget {
  final DateTime date;
  final bool isSelected;
  final VoidCallback? onTap;
  const DateTile({super.key, required this.date, this.onTap, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 8.w),
        width: 48.w,
        decoration: BoxDecoration(
          color: isSelected ? AppThemes.main : Colors.white,
          borderRadius: BorderRadius.circular(8.w),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              DateFormat('EEE').format(date).toUpperCase(),
              style: AppStyles.kB12TextStyle.copyWith(color: isSelected ? Colors.white : AppThemes.fontSecondary),
            ),
            VerticalSpace(height: 4.h),
            Text(
              DateFormat.d().format(date),
              style: AppStyles.kB16TextStyle.copyWith(color: isSelected ? Colors.white : AppThemes.fontMain),
            ),
          ],
        ),
      ),
    );
  }
}
