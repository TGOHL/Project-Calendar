import 'package:project_calendar/shared/enums/task_type.dart';

class TaskModel {
  final String title;
  final DateTime from;
  final DateTime to;
  final TaskType taskType;
  bool isDone;
  TaskModel({
    required this.title,
    required this.from,
    required this.to,
    required this.taskType,
    this.isDone = true,
  });

  TaskModel copyWith({
    String? title,
    DateTime? from,
    DateTime? to,
    TaskType? taskType,
    bool? isDone,
  }) {
    return TaskModel(
      title: title ?? this.title,
      from: from ?? this.from,
      to: to ?? this.to,
      taskType: taskType ?? this.taskType,
      isDone: isDone ?? this.isDone,
    );
  }

  @override
  String toString() {
    return 'TaskModel(title: $title, from: $from, to: $to, taskType: $taskType, isDone: $isDone)';
  }

  @override
  bool operator ==(covariant TaskModel other) {
    if (identical(this, other)) return true;

    return other.title == title && other.from == from && other.to == to && other.taskType == taskType && other.isDone == isDone;
  }

  @override
  int get hashCode {
    return title.hashCode ^ from.hashCode ^ to.hashCode ^ taskType.hashCode ^ isDone.hashCode;
  }
}
