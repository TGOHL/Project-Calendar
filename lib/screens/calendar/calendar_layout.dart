import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_calendar/screens/calendar/cubit/calendar_cubit.dart';
import 'package:project_calendar/shared/helpers/toast_helper.dart';

part 'calendar_view.dart';

class CalendarScreen extends StatelessWidget {
  static const routeName = '/calendar-screen';

  const CalendarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<CalendarCubit, CalendarState>(
      listener: (context, state) {
        if (state is CalendarErrorState) {
          ToastHelper.of(context).showError(state.error.toString());
        }
      },
      child: const CalendarView(),
    );
  }
}
