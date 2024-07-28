import 'package:project_calendar/shared/enums/task_type.dart';
import 'package:project_calendar/shared/models/app/task.dart';
import 'package:project_calendar/shared/utils/extention/datetime.dart';

class DatabaseServices {
  List<TaskModel> getAllTasks() {
    return [
      TaskModel(
        from: DateTime.now().copyWith(hour: 0, minute: 0),
        to: DateTime.now().copyWith(hour: 1, minute: 0),
        title: 'Meeting Concept',
        taskType: TaskType.purple,
      ),
      TaskModel(
        from: DateTime.now().copyWith(hour: 2, minute: 0),
        to: DateTime.now().copyWith(hour: 3, minute: 0),
        title: 'Daily Standup',
        taskType: TaskType.orange,
      ),
      TaskModel(
        from: DateTime.now().copyWith(hour: 4, minute: 0),
        to: DateTime.now().copyWith(hour: 4, minute: 30),
        title: 'Meeting with Client',
        taskType: TaskType.green,
      ),
      TaskModel(
        from: DateTime.now().copyWith(hour: 6, minute: 0),
        to: DateTime.now().copyWith(hour: 7, minute: 0),
        title: 'Sprint Review Period 02 in May 2024',
        taskType: TaskType.purple,
      ),
      TaskModel(
        from: DateTime.now().add(const Duration(days: 1)).copyWith(hour: 1, minute: 0),
        to: DateTime.now().add(const Duration(days: 1)).copyWith(hour: 2, minute: 0),
        title: 'Project Planning',
        taskType: TaskType.orange,
      ),
      TaskModel(
        from: DateTime.now().add(const Duration(days: 1)).copyWith(hour: 11, minute: 0),
        to: DateTime.now().add(const Duration(days: 1)).copyWith(hour: 12, minute: 0),
        title: 'Code Review',
        taskType: TaskType.green,
      ),
      TaskModel(
        from: DateTime.now().add(const Duration(days: 1)).copyWith(hour: 14, minute: 0),
        to: DateTime.now().add(const Duration(days: 1)).copyWith(hour: 15, minute: 0),
        title: 'Design Discussion',
        taskType: TaskType.purple,
      ),
      TaskModel(
        from: DateTime.now().add(const Duration(days: 1)).copyWith(hour: 16, minute: 0),
        to: DateTime.now().add(const Duration(days: 1)).copyWith(hour: 17, minute: 0),
        title: 'Backend Sync',
        taskType: TaskType.green,
      ),
      TaskModel(
        from: DateTime.now().add(const Duration(days: 2)).copyWith(hour: 3, minute: 0),
        to: DateTime.now().add(const Duration(days: 2)).copyWith(hour: 4, minute: 0),
        title: 'Frontend Sync',
        taskType: TaskType.orange,
      ),
      TaskModel(
        from: DateTime.now().add(const Duration(days: 2)).copyWith(hour: 10, minute: 0),
        to: DateTime.now().add(const Duration(days: 2)).copyWith(hour: 11, minute: 0),
        title: 'API Integration',
        taskType: TaskType.orange,
      ),
      TaskModel(
        from: DateTime.now().add(const Duration(days: 2)).copyWith(hour: 12, minute: 0),
        to: DateTime.now().add(const Duration(days: 2)).copyWith(hour: 13, minute: 0),
        title: 'Bug Fixing',
        taskType: TaskType.purple,
      ),
      TaskModel(
        from: DateTime.now().add(const Duration(days: 2)).copyWith(hour: 7, minute: 0),
        to: DateTime.now().add(const Duration(days: 2)).copyWith(hour: 8, minute: 0),
        title: 'Team Meeting',
        taskType: TaskType.green,
      ),
      TaskModel(
        from: DateTime.now().add(const Duration(days: 2)).copyWith(hour: 9, minute: 0),
        to: DateTime.now().add(const Duration(days: 2)).copyWith(hour: 10, minute: 0),
        title: 'Client Presentation',
        taskType: TaskType.purple,
      ),
      TaskModel(
        from: DateTime.now().add(const Duration(days: 2)).copyWith(hour: 11, minute: 0),
        to: DateTime.now().add(const Duration(days: 2)).copyWith(hour: 12, minute: 0),
        title: 'App Deployment',
        taskType: TaskType.purple,
      ),
      TaskModel(
        from: DateTime.now().add(const Duration(days: 3)).copyWith(hour: 1, minute: 0),
        to: DateTime.now().add(const Duration(days: 3)).copyWith(hour: 2, minute: 0),
        title: 'Marketing Sync',
        taskType: TaskType.orange,
      ),
      TaskModel(
        from: DateTime.now().add(const Duration(days: 3)).copyWith(hour: 15, minute: 0),
        to: DateTime.now().add(const Duration(days: 3)).copyWith(hour: 16, minute: 0),
        title: 'Legal Review',
        taskType: TaskType.green,
      ),
      TaskModel(
        from: DateTime.now().subtract(const Duration(days: 1)).copyWith(hour: 2, minute: 0),
        to: DateTime.now().subtract(const Duration(days: 1)).copyWith(hour: 2, minute: 30),
        title: 'User Testing',
        taskType: TaskType.green,
      ),
      TaskModel(
        from: DateTime.now().subtract(const Duration(days: 1)).copyWith(hour: 12, minute: 0),
        to: DateTime.now().subtract(const Duration(days: 1)).copyWith(hour: 13, minute: 0),
        title: 'Performance Review',
        taskType: TaskType.orange,
      ),
      TaskModel(
        from: DateTime.now().subtract(const Duration(days: 1)).copyWith(hour: 15, minute: 0),
        to: DateTime.now().subtract(const Duration(days: 1)).copyWith(hour: 15, minute: 30),
        title: 'Strategy Meeting',
        taskType: TaskType.purple,
      ),
      TaskModel(
        from: DateTime.now().subtract(const Duration(days: 1)).copyWith(hour: 16, minute: 0),
        to: DateTime.now().subtract(const Duration(days: 1)).copyWith(hour: 17, minute: 0),
        title: 'Roadmap Planning',
        taskType: TaskType.green,
      ),
      TaskModel(
        from: DateTime.now().subtract(const Duration(days: 2)).copyWith(hour: 5, minute: 0),
        to: DateTime.now().subtract(const Duration(days: 2)).copyWith(hour: 6, minute: 0),
        title: 'Quarterly Review',
        taskType: TaskType.orange,
      ),
      TaskModel(
        from: DateTime.now().subtract(const Duration(days: 2)).copyWith(hour: 10, minute: 0),
        to: DateTime.now().subtract(const Duration(days: 2)).copyWith(hour: 11, minute: 0),
        title: 'Team Lunch',
        taskType: TaskType.green,
      ),
      TaskModel(
        from: DateTime.now().subtract(const Duration(days: 2)).copyWith(hour: 12, minute: 0),
        to: DateTime.now().subtract(const Duration(days: 2)).copyWith(hour: 13, minute: 0),
        title: 'HR Meeting',
        taskType: TaskType.purple,
      ),
      TaskModel(
        from: DateTime.now().subtract(const Duration(days: 2)).copyWith(hour: 14, minute: 0),
        to: DateTime.now().subtract(const Duration(days: 2)).copyWith(hour: 15, minute: 0),
        title: 'Sales Update',
        taskType: TaskType.orange,
      ),
      TaskModel(
        from: DateTime.now().subtract(const Duration(days: 3)).copyWith(hour: 2, minute: 0),
        to: DateTime.now().subtract(const Duration(days: 3)).copyWith(hour: 3, minute: 0),
        title: 'Tech Talk',
        taskType: TaskType.purple,
      ),
      TaskModel(
        from: DateTime.now().subtract(const Duration(days: 3)).copyWith(hour: 11, minute: 0),
        to: DateTime.now().subtract(const Duration(days: 3)).copyWith(hour: 12, minute: 0),
        title: 'Product Launch',
        taskType: TaskType.green,
      ),
      TaskModel(
        from: DateTime.now().subtract(const Duration(days: 3)).copyWith(hour: 13, minute: 0),
        to: DateTime.now().subtract(const Duration(days: 3)).copyWith(hour: 14, minute: 0),
        title: 'Budget Review',
        taskType: TaskType.orange,
      ),
    ];
  }

  List<TaskModel> getTasksByDay(DateTime dateTime) {
    return getAllTasks().where((element) => element.from.isSameDayAs(dateTime)).toList();
  }
}
