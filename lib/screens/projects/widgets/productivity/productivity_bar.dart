import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:project_calendar/screens/projects/widgets/productivity/productivity_bar_percentage.dart';
import 'package:project_calendar/shared/config/styles.dart';
import 'package:project_calendar/shared/config/themes.dart';
import 'package:project_calendar/shared/models/app/productivity_bar.dart';
import 'package:project_calendar/shared/widgets/utils/vertical_space.dart';

class ProductivityBar extends StatelessWidget {
  final ProductivityBarModel productivityBarModel;
  final double maxHeight;
  final bool isSelected;
  final VoidCallback? onBarTap;
  const ProductivityBar({super.key, required this.productivityBarModel, required this.maxHeight, required this.isSelected, this.onBarTap});

  // To show minimum height for the bar in case it is so small
  int get formatedPercentage => (productivityBarModel.percentage < 5 ? 5 : productivityBarModel.percentage);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onBarTap,
      child: Container(
        color: Colors.transparent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            if (isSelected) ...[ProductivityBarPercentage(percentage: productivityBarModel.percentage), VerticalSpace(height: 14.h)],
            Container(
              width: 48.w,
              height: maxHeight * formatedPercentage / 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(top: Radius.circular(8.w)),
                color: isSelected ? AppThemes.main : null,
                gradient: !isSelected
                    ? const LinearGradient(
                        colors: [Color(0x1F191C2A), Color(0x0F191C2A)],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      )
                    : null,
              ),
            ),
            VerticalSpace(height: 12.h),
            Text(
              DateFormat('MMM').format(productivityBarModel.date),
              style: AppStyles.kM14TextStyle.copyWith(color: isSelected ? null : AppThemes.fontSecondary),
            ),
          ],
        ),
      ),
    );
  }
}
