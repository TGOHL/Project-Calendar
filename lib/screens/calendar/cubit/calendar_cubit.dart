import 'dart:math';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:project_calendar/shared/models/app/task.dart';
import 'package:project_calendar/shared/services/local/database.dart';
import 'package:project_calendar/shared/utils/extention/datetime.dart';

part 'calendar_state.dart';

class CalendarCubit extends Cubit<CalendarState> {
  late TabController tapbarController;
  ScrollController dateListController = ScrollController();
  DateTime _selectedDate = DateTime.now();
  bool _initialized = false;

  double _scrollPostion = 0;
  int _tapindex = 0;

  DateTime get selectedDate => _selectedDate;
  int get tapIndex => _tapindex;
  List<TaskModel> get taskList => DatabaseServices().getTasksByDay(selectedDate);

  String get monthOfTheYear => DateFormat('MMMM yyyy ').format(selectedDate);

  void changeDate(DateTime date, [bool shouldScroll = true]) {
    if (_selectedDate.isSameDayAs(date)) return;
    bool isMonthChanged = !_selectedDate.isSameMonthAs(date);
    _selectedDate = date;
    if (shouldScroll) jumpToSelectedDay();
    if (isMonthChanged) emit(CalendarMonthChangedState());
    emit(CalendarDateChangedState());
  }

  CalendarCubit() : super(CalendarInitial());

  void init() {
    if (_initialized) {
      jumpToPosition(_scrollPostion);
    } else {
      scrollTillSelectedDay();
      dateListController.addListener(onDateListScroll);
      tapbarController.animation?.addListener(onTabViewScroll);
      _initialized = true;
    }
  }

  set setTapbarController(TabController controller) {
    if (!_initialized) {
      tapbarController = controller;
    }
  }

  void scrollTillDay(int day) {
    double itemWidth = 48.w;
    double space = 8.w;
    int index = day - 1;
    double maxScroll = (itemWidth + space) * (selectedDate.maxDays - 5);
    double position = min((itemWidth + space) * index, maxScroll);
    dateListController.animateTo(
      position,
      duration: Duration(milliseconds: 1000 * position ~/ maxScroll),
      curve: Curves.easeInOut,
    );
  }

  void jumpToDay(int day) {
    double itemWidth = 48.w;
    double space = 8.w;
    int index = day - 1;
    double maxScroll = (itemWidth + space) * (selectedDate.maxDays - 6);
    double position = min((itemWidth + space) * index, maxScroll);
    dateListController.jumpTo(position);
  }

  void jumpToPosition(double p) {
    double itemWidth = 48.w;
    double space = 8.w;
    double maxScroll = (itemWidth + space) * (selectedDate.maxDays - 6);
    double position = min(p, maxScroll);
    dateListController.jumpTo(position);
  }

  void scrollTillSelectedDay() => scrollTillDay(_selectedDate.day);
  void jumpToSelectedDay() => jumpToDay(_selectedDate.day);

  void changeTap(int value) {
    if (_tapindex == value || value > 1) return;
    tapbarController.animateTo(value);
  }

  void onDateListScroll() {
    _scrollPostion = dateListController.position.pixels;
  }

  void onTabViewScroll() {
    final value = ((tapbarController.animation?.value ?? 0) * 2).toInt();
    if (_tapindex == value || value > 1) return;
    _tapindex = value;
    emit(CalendarTapChangedState());
  }

  void nextDate() => changeDate(selectedDate.add(const Duration(days: 1)));

  void previousDate() => changeDate(selectedDate.subtract(const Duration(days: 1)));

  @override
  Future<void> close() {
    dateListController.dispose();
    dateListController.removeListener(onDateListScroll);
    tapbarController.animation?.addListener(onTabViewScroll);
    return super.close();
  }
}
