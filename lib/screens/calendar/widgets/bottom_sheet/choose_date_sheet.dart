import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:project_calendar/shared/config/styles.dart';
import 'package:project_calendar/shared/config/themes.dart';
import 'package:project_calendar/shared/helpers/get_it.dart';
import 'package:project_calendar/shared/widgets/line.dart';
import 'package:table_calendar/table_calendar.dart';

class BottomSheetCalendar extends StatefulWidget {
  final Function(DateTime date) onContinue;
  const BottomSheetCalendar({super.key, required this.onContinue});

  @override
  State<BottomSheetCalendar> createState() => _BottomSheetCalendarState();
}

class _BottomSheetCalendarState extends State<BottomSheetCalendar> {
  late DateTime _focusedDay;
  late DateTime _selectedDay;

  @override
  void initState() {
    _focusedDay = calendarCubit.selectedDate;
    _selectedDay = calendarCubit.selectedDate;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.vertical(top: Radius.circular(16.w)),
      child: Container(
        color: AppThemes.scaffold,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            AppBar(
              title: Text(
                'Choose Date',
                style: AppStyles.kB16TextStyle,
              ),
              automaticallyImplyLeading: false,
              centerTitle: true,
              backgroundColor: AppThemes.scaffold,
              actions: [
                IconButton(
                  icon: const Icon(
                    Icons.close,
                    color: AppThemes.main,
                  ),
                  onPressed: () => Navigator.pop(context),
                ),
              ],
            ),
            Line(
              width: ScreenUtil().screenWidth,
              color: AppThemes.borderColor,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: TableCalendar(
                locale: 'en_US',
                startingDayOfWeek: StartingDayOfWeek.monday,
                firstDay: DateTime(2022),
                lastDay: DateTime(2025, 12, 31),
                focusedDay: _focusedDay,
                calendarFormat: CalendarFormat.month,
                headerStyle: HeaderStyle(
                  formatButtonVisible: false,
                  titleCentered: true,
                  titleTextStyle: AppStyles.kSB16TextStyle,
                  leftChevronIcon: const Icon(
                    Icons.arrow_back_ios_new_rounded,
                    color: AppThemes.main,
                  ),
                  rightChevronIcon: const Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: AppThemes.main,
                  ),
                ),
                daysOfWeekStyle: DaysOfWeekStyle(
                  dowTextFormatter: (date, locale) => DateFormat.E(locale).format(date)[0],
                  weekdayStyle: AppStyles.kSB16TextStyle,
                  weekendStyle: AppStyles.kSB16TextStyle,
                ),
                calendarStyle: CalendarStyle(
                  defaultTextStyle: AppStyles.kSB16TextStyle,
                  disabledTextStyle: AppStyles.kSB16TextStyle.copyWith(color: AppThemes.fontSecondary),
                  outsideTextStyle: AppStyles.kSB16TextStyle.copyWith(color: AppThemes.fontSecondary),
                  weekendTextStyle: AppStyles.kSB16TextStyle,
                  selectedDecoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppThemes.main,
                  ),
                ),
                daysOfWeekHeight: 36.h,
                selectedDayPredicate: (day) {
                  return isSameDay(_selectedDay, day);
                },
                onDaySelected: (selectedDay, focusedDay) {
                  if (!isSameDay(_selectedDay, selectedDay)) {
                    setState(() {
                      _selectedDay = selectedDay;
                      _focusedDay = focusedDay;
                    });
                  }
                },
                onPageChanged: (focusedDay) {
                  _focusedDay = focusedDay;
                },
              ),
            ),
            Line(
              width: ScreenUtil().screenWidth,
              color: AppThemes.borderColor,
            ),
            Padding(
              padding: EdgeInsets.all(24.w),
              child: ElevatedButton(
                onPressed: () {
                  widget.onContinue(_selectedDay);
                  Navigator.pop(context);
                },
                child: const Text('Continue'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
