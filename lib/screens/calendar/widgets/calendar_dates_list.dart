import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project_calendar/screens/calendar/cubit/calendar_cubit.dart';
import 'package:project_calendar/screens/calendar/widgets/tiles/date_tile.dart';
import 'package:project_calendar/shared/config/constants.dart';
import 'package:project_calendar/shared/helpers/get_it.dart';
import 'package:project_calendar/shared/utils/extention/datetime.dart';
import 'package:project_calendar/shared/widgets/horizontal_space.dart';

class CalendarDatesList extends StatelessWidget {
  const CalendarDatesList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CalendarCubit, CalendarState>(
      buildWhen: (previous, current) => current is CalendarDateChangedState,
      builder: (context, state) {
        return SizedBox(
          height: 68.h,
          child: ListView.separated(
            separatorBuilder: (context, index) => HorizontalSpace(width: 8.w),
            controller: calendarCubit.dateListController,
            scrollDirection: Axis.horizontal,
            itemCount: calendarCubit.selectedDate.maxDays,
            padding: EdgeInsets.symmetric(horizontal: contentPadding),
            itemBuilder: (context, index) {
              DateTime date = calendarCubit.selectedDate.copyWith(day: index + 1);
              return DateTile(
                date: date,
                isSelected: calendarCubit.selectedDate.isSameDayAs(date),
                onTap: () => calendarCubit.changeDate(date),
              );
            },
          ),
        );
      },
    );
  }
}
