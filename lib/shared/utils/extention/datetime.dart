extension DateTimeExtension on DateTime {
  int get maxDays => DateTime(year, month + 1).subtract(const Duration(days: 1)).day;

  /// has current day, month and year and Next Hour
  bool get isNextHour => DateTime.now().hour == hour + 1 && isCurrentDay;

  /// has current day, month and year and Previous Hour
  bool get isPreviousHour => DateTime.now().hour == hour - 1 && isCurrentDay;

  /// has current hour, day, month and year
  bool get isCurrentHour => DateTime.now().hour == hour && isCurrentDay;

  /// has current day, month and year
  bool get isCurrentDay => DateTime.now().day == day && isCurrentMonth;

  /// has current month and year
  bool get isCurrentMonth => DateTime.now().month == month && isCurrentYear;

  /// has current year
  bool get isCurrentYear => DateTime.now().year == year;

  /// has same hour, day, month and year
  bool isSameHourAs(DateTime date) => date.hour == hour && isSameDayAs(date);

  /// has same day, month and year
  bool isSameDayAs(DateTime date) => date.day == day && isSameMonthAs(date);

  /// has same month and year
  bool isSameMonthAs(DateTime date) => date.month == month && isSameYearAs(date);

  /// has same year
  bool isSameYearAs(DateTime date) => date.year == year;
}
