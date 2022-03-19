import 'package:flutask_checker/app/data/providers/task/provider.dart';

import '../../models/task.dart';

class TaskRepository {
  TaskProvider taskprovider;
  TaskRepository({required this.taskprovider});
  List<Task> readTasks() => taskprovider.readTask();
  void writeTasks(List<Task> tasks) => taskprovider.writeTasks(tasks);
}
