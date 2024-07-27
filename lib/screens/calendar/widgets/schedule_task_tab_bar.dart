import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project_calendar/screens/calendar/cubit/calendar_cubit.dart';
import 'package:project_calendar/shared/config/constants.dart';
import 'package:project_calendar/shared/config/styles.dart';
import 'package:project_calendar/shared/config/themes.dart';
import 'package:project_calendar/shared/helpers/get_it.dart';

class ScheduleTaskTabBar extends StatelessWidget {
  const ScheduleTaskTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CalendarCubit, CalendarState>(
      buildWhen: (previous, current) => current is CalendarTapChangedState,
      builder: (context, state) {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: contentPadding),
          child: TabBar(
            controller: calendarCubit.tapbarController,
            onTap: calendarCubit.changeTap,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorColor: AppThemes.main,
            tabs: [
              Padding(
                padding: EdgeInsets.only(bottom: 10.h),
                child: Text(
                  'Schedule',
                  style: AppStyles.kB18TextStyle.copyWith(color: calendarCubit.tapIndex == 0 ? null : AppThemes.fontSecondary),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 10.h),
                child: Text(
                  'Task',
                  style: AppStyles.kB18TextStyle.copyWith(color: calendarCubit.tapIndex == 1 ? null : AppThemes.fontSecondary),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
