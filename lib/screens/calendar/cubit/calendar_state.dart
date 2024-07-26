part of 'calendar_cubit.dart';

@immutable
sealed class CalendarState {}

final class CalendarInitial extends CalendarState {}

class CalendarErrorState extends CalendarState {
  final Exception error;

  CalendarErrorState(this.error);
}
