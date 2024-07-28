import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project_calendar/screens/calendar/cubit/calendar_cubit.dart';
import 'package:project_calendar/screens/calendar/widgets/bottom_sheet/choose_date_sheet.dart';
import 'package:project_calendar/shared/config/constants.dart';
import 'package:project_calendar/shared/config/styles.dart';
import 'package:project_calendar/shared/config/themes.dart';
import 'package:project_calendar/shared/helpers/get_it.dart';
import 'package:project_calendar/shared/widgets/buttons/arrow_button.dart';

class CalendarDateControllerView extends StatelessWidget {
  const CalendarDateControllerView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CalendarCubit, CalendarState>(
      buildWhen: (previous, current) => current is CalendarMonthChangedState,
      builder: (context, state) {
        return Column(
          children: [
            Padding(
              padding: EdgeInsets.all(contentPadding),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      showModalBottomSheet(
                        context: context,
                        isScrollControlled: true,
                        builder: (context) => BottomSheetCalendar(
                          onContinue: calendarCubit.changeDate,
                        ),
                      );
                    },
                    child: Container(
                      color: Colors.transparent,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            calendarCubit.monthOfTheYear,
                            style: AppStyles.kB18TextStyle,
                          ),
                          RotatedBox(
                            quarterTurns: 3,
                            child: Icon(
                              Icons.arrow_back_ios_new_rounded,
                              color: AppThemes.main,
                              size: 16.w,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Spacer(),
                  ArrowButton(
                    icon: Icons.arrow_back_ios_new_rounded,
                    onTap: calendarCubit.previousDate,
                  ),
                  SizedBox(
                    width: 8.w,
                  ),
                  ArrowButton(
                    icon: Icons.arrow_forward_ios_rounded,
                    onTap: calendarCubit.nextDate,
                  ),
                ],
              ),
            )
          ],
        );
      },
    );
  }
}
