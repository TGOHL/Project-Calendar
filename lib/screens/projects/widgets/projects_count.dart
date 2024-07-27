import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project_calendar/shared/config/styles.dart';
import 'package:project_calendar/shared/enums/project_state.dart';
import 'package:project_calendar/shared/widgets/vertical_space.dart';

class ProjectsCount extends StatelessWidget {
  final ProjectState projectState;
  final int count;
  const ProjectsCount({super.key, required this.projectState, required this.count});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 104.w,
          padding: EdgeInsets.all(16.w),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.w),
            gradient: SweepGradient(colors: projectState.gradient, center: Alignment.centerRight),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    count.toString(),
                    style: AppStyles.kB24TextStyle.copyWith(color: Colors.white),
                  ),
                  Image.asset(
                    projectState.imageAsset,
                    width: 13.33.w,
                  )
                ],
              ),
              VerticalSpace(height: 8.h),
              Text(
                projectState.label,
                style: AppStyles.kM12TextStyle.copyWith(color: Colors.white),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 6,
          left: 24,
          right: 24,
          child: DecoratedBox(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.w),
              boxShadow: [
                BoxShadow(color: projectState.shadowColor, offset: const Offset(0, 3), spreadRadius: 6, blurRadius: 12),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
