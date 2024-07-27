part of 'calendar_cubit.dart';

@immutable
sealed class CalendarState {}

final class CalendarInitial extends CalendarState {}

final class CalendarDateChangedState extends CalendarState {}

final class CalendarMonthChangedState extends CalendarState {}

final class CalendarTapChangedState extends CalendarState {}

class CalendarErrorState extends CalendarState {
  final Exception error;

  CalendarErrorState(this.error);
}
