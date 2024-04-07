import 'package:dark_todo_app/clients/local_db.client.dart';
import 'package:dark_todo_app/objectbox.g.dart';
import 'package:dark_todo_app/src/shared/domain/models/task_list.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../shared/domain/models/task.dart';

part 'task.repository.g.dart';

class TaskRepository {
  final Box<Task> taskBox;
  final Box<TaskList> taskListBox;

  TaskRepository(ObjectBoxManager localDb)
      : taskBox = localDb.getBox<Task>(),
        taskListBox = localDb.getBox<TaskList>();

  int addTaskToList(Task task, int listId) {
    task.taskList.targetId = listId;
    return taskBox.put(task);
  }

  List<Task> getAllTasksFromList(int id) {
    Query<Task> query = taskBox.query(Task_.taskList.equals(id)).build();
    List<Task> tasks = query.find();
    return tasks;
  }

  int deleteAllTasksFromList(int id) {
    List<Task> tasks = getAllTasksFromList(id);
    List<int> tasksId = [];
    tasks.forEach((element) {
      tasksId.add(element.id);
    });
    var ids = taskBox.removeMany(tasksId);
    return ids;
  }
}

@riverpod
TaskRepository taskRepository(
        TaskRepositoryRef taskRepositoryRef, ObjectBoxManager localDb) =>
    TaskRepository(localDb);
