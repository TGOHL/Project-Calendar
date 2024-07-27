import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:project_calendar/screens/calendar/cubit/calendar_cubit.dart';
import 'package:project_calendar/screens/home/cubit/home_cubit.dart';
import 'package:project_calendar/screens/projects/cubit/projects_cubit.dart';

final locator = GetIt.instance;
HomeCubit get homeCubit => locator();
ProjectsCubit get projectsCubit => locator();
CalendarCubit get calendarCubit => locator();
GlobalKey<ScaffoldMessengerState> get scaffoldKey => locator();
BuildContext? get currentContext => scaffoldKey.currentContext;

class GetItHelper {
  void getItInitialization() {
    locator.registerSingleton<HomeCubit>(HomeCubit());
    locator.registerSingleton<ProjectsCubit>(ProjectsCubit());
    locator.registerSingleton<CalendarCubit>(CalendarCubit());
    locator.registerSingleton<GlobalKey<ScaffoldMessengerState>>(GlobalKey<ScaffoldMessengerState>());
  }
}
