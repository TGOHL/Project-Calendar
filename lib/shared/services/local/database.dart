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
        title: 'Dialy Standup',
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
        from: DateTime(2024, 7, 27, 9, 0),
        to: DateTime(2024, 7, 27, 10, 0),
        title: 'Meeting Concept',
        taskType: TaskType.purple,
      ),
      TaskModel(
        from: DateTime(2024, 7, 27, 12, 0),
        to: DateTime(2024, 7, 27, 12, 30),
        title: 'Dialy Standup',
        taskType: TaskType.orange,
      ),
      TaskModel(
        from: DateTime(2024, 7, 27, 11, 0),
        to: DateTime(2024, 7, 27, 12, 0),
        title: 'Meeting with Client',
        taskType: TaskType.green,
      ),
      TaskModel(
        from: DateTime(2024, 7, 27, 14, 0),
        to: DateTime(2024, 7, 27, 15, 0),
        title: 'Sprint Review Period 02 in May 2024',
        taskType: TaskType.purple,
      ),
      TaskModel(
        from: DateTime(2024, 7, 27, 17, 0),
        to: DateTime(2024, 7, 27, 18, 0),
        title: 'Monitoring Project',
        taskType: TaskType.orange,
      ),
      TaskModel(
        from: DateTime(2024, 7, 27, 22, 0),
        to: DateTime(2024, 7, 27, 22, 30),
        title: 'Information Architecture',
        taskType: TaskType.green,
      ),
      TaskModel(
        from: DateTime(2024, 7, 28, 9, 0),
        to: DateTime(2024, 7, 28, 9, 30),
        title: 'Meeting Concept',
        taskType: TaskType.purple,
      ),
      TaskModel(
        from: DateTime(2024, 7, 28, 10, 0),
        to: DateTime(2024, 7, 28, 11, 0),
        title: 'Information Architecture',
        taskType: TaskType.orange,
      ),
      TaskModel(
        from: DateTime(2024, 7, 28, 12, 0),
        to: DateTime(2024, 7, 28, 13, 0),
        title: 'Dialy Standup',
        taskType: TaskType.green,
      ),
      TaskModel(
        from: DateTime(2024, 7, 28, 14, 0),
        to: DateTime(2024, 7, 28, 14, 30),
        title: 'Sprint Review Period 02 in May 2024',
        taskType: TaskType.purple,
      ),
      TaskModel(
        from: DateTime(2024, 7, 29, 9, 0),
        to: DateTime(2024, 7, 29, 10, 0),
        title: 'Meeting Concept',
        taskType: TaskType.orange,
      ),
      TaskModel(
        from: DateTime(2024, 7, 29, 12, 0),
        to: DateTime(2024, 7, 29, 12, 30),
        title: 'Dialy Standup',
        taskType: TaskType.purple,
      ),
      TaskModel(
        from: DateTime(2024, 7, 29, 14, 0),
        to: DateTime(2024, 7, 29, 15, 0),
        title: 'Sprint Review Period 02 in May 2024',
        taskType: TaskType.green,
      ),
      TaskModel(
        from: DateTime(2024, 7, 29, 17, 0),
        to: DateTime(2024, 7, 29, 18, 0),
        title: 'Monitoring Project',
        taskType: TaskType.purple,
      ),
    ];
  }

  List<TaskModel> getTasksByDay(DateTime dateTime) {
    return getAllTasks().where((element) => element.from.isSameDayAs(dateTime)).toList();
  }
}
