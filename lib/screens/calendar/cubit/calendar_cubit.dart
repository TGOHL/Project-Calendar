import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

part 'calendar_state.dart';

class CalendarCubit extends Cubit<CalendarState> {
  CalendarCubit() : super(CalendarInitial());
}
