import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_calendar/screens/calendar/cubit/calendar_cubit.dart';
import 'package:project_calendar/screens/calendar/widgets/tiles/schedule_tile.dart';
import 'package:project_calendar/screens/calendar/widgets/tiles/task_tile.dart';
import 'package:project_calendar/shared/config/constants.dart';
import 'package:project_calendar/shared/helpers/get_it.dart';

class ScheduleTaskTabView extends StatelessWidget {
  const ScheduleTaskTabView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CalendarCubit, CalendarState>(
      buildWhen: (previous, current) => current is CalendarDateChangedState,
      builder: (context, state) {
        return TabBarView(
          controller: calendarCubit.tapbarController,
          children: [
            ListView.builder(
              itemCount: hoursPerDay,
              padding: EdgeInsets.all(contentPadding),
              itemBuilder: (context, index) {
                return ScheduleTile(dateTime: calendarCubit.selectedDate.copyWith(hour: index, minute: 0));
              },
            ),
            ListView.builder(
              itemCount: calendarCubit.taskList.length,
              padding: EdgeInsets.all(contentPadding),
              itemBuilder: (context, index) {
                return TaskTile(taskModel: calendarCubit.taskList[index]);
              },
            ),
          ],
        );
      },
    );
  }
}
