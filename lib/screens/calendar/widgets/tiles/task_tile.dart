import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:project_calendar/shared/config/assets.dart';
import 'package:project_calendar/shared/config/styles.dart';
import 'package:project_calendar/shared/config/themes.dart';
import 'package:project_calendar/shared/models/app/task.dart';
import 'package:project_calendar/shared/widgets/horizontal_space.dart';
import 'package:project_calendar/shared/widgets/vertical_space.dart';

class TaskTile extends StatelessWidget {
  final TaskModel taskModel;
  const TaskTile({super.key, required this.taskModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16.h),
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: AppThemes.scaffold,
        borderRadius: BorderRadius.circular(8.w),
        boxShadow: [
          BoxShadow(
            offset: Offset(4.w, 8.h),
            blurRadius: 24.w,
            color: Colors.black.withOpacity(.08),
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  taskModel.title,
                  overflow: TextOverflow.ellipsis,
                  style: AppStyles.kM16TextStyle,
                ),
                VerticalSpace(height: 4.h),
                Text(
                  'Due Date : ${DateFormat('EEE, d MMM yyyy').format(taskModel.from)}',
                  style: AppStyles.kR12TextStyle.copyWith(color: AppThemes.fontSecondary),
                ),
              ],
            ),
          ),
          if (taskModel.isDone) ...[
            HorizontalSpace(width: 16.h),
            Image.asset(
              AppAssets.tickSquare,
              width: 24.w,
            )
          ]
        ],
      ),
    );
  }
}
