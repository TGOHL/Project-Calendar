import 'dart:ui';

import 'package:project_calendar/shared/config/themes.dart';

enum TaskType {
  purple(AppThemes.taskPurple, AppThemes.taskPurpleLight),
  orange(AppThemes.taskOrange, AppThemes.taskOrangeLight),
  green(AppThemes.taskGreen, AppThemes.taskGreenLight);

  final Color mainColor;
  final Color secondaryColor;

  const TaskType(this.mainColor, this.secondaryColor);
}
