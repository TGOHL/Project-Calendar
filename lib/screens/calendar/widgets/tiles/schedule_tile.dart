import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:project_calendar/shared/config/styles.dart';
import 'package:project_calendar/shared/config/themes.dart';
import 'package:project_calendar/shared/helpers/get_it.dart';
import 'package:project_calendar/shared/models/app/task.dart';
import 'package:project_calendar/shared/utils/extention/datetime.dart';
import 'package:project_calendar/shared/widgets/utils/horizontal_space.dart';
import 'package:project_calendar/shared/widgets/utils/line.dart';
import 'package:project_calendar/shared/widgets/utils/vertical_space.dart';

class ScheduleTile extends StatelessWidget {
  final DateTime dateTime;

  const ScheduleTile({super.key, required this.dateTime});

  bool get shouldHideTime => (dateTime.isCurrentHour && DateTime.now().minute < 5) || (dateTime.isPreviousHour && DateTime.now().minute > 58);

  TaskModel? get taskModel {
    try {
      return calendarCubit.taskList.firstWhere(
        (element) {
          return element.from.isSameHourAs(dateTime);
        },
      );
    } catch (e) {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 86.h,
      child: Stack(
        children: [
          Row(
            children: [
              if (!shouldHideTime)
                Text(
                  DateFormat('HH.mm').format(dateTime),
                  style: AppStyles.kM12TextStyle,
                )
              else
                HorizontalSpace(width: 32.w),
              HorizontalSpace(width: 9.w),
              const Expanded(
                child: Line(
                  color: AppThemes.borderColor,
                ),
              ),
            ],
          ),
          if (taskModel != null)
            Positioned(
              top: 8.h,
              bottom: 8.h,
              right: 0,
              left: 56.w,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.w),
                child: Container(
                  color: taskModel!.taskType.secondaryColor,
                  child: Row(
                    children: [
                      Container(
                        width: 6.w,
                        color: taskModel!.taskType.mainColor,
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                taskModel!.title,
                                overflow: TextOverflow.ellipsis,
                                style: AppStyles.kSB14TextStyle,
                              ),
                              VerticalSpace(height: 4.h),
                              Text(
                                '${DateFormat('hh:mm a').format(taskModel!.from)} - ${DateFormat('hh:mm a').format(taskModel!.to)}',
                                style: AppStyles.kM12TextStyle.copyWith(color: AppThemes.fontSecondary),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          if (dateTime.isCurrentHour)
            Positioned(
              top: 70.h * DateTime.now().minute / 60 + 4.h,
              left: 0,
              right: 0,
              child: Row(
                children: [
                  Text(
                    DateFormat('HH.mm').format(DateTime.now()),
                    style: AppStyles.kB12TextStyle,
                  ),
                  HorizontalSpace(width: 9.w),
                  Container(
                    width: 5.w,
                    height: 5.w,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppThemes.scaffold,
                      border: Border.all(color: AppThemes.main),
                    ),
                  ),
                  const Expanded(
                    child: Line(
                      color: AppThemes.main,
                    ),
                  ),
                ],
              ),
            )
        ],
      ),
    );
  }
}
