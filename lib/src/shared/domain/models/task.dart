import 'package:dark_todo_app/src/shared/domain/models/task_list.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class Task {
  @Id()
  int id = 0;

  String description;
  bool isCompleted;

  final taskList = ToOne<TaskList>();

  Task(this.description, {this.id = 0, this.isCompleted = false});

  Task copyWith({String? description, int? id, bool? isCompleted}) {
    return Task(
      description ?? this.description,
      id: id ?? this.id,
      isCompleted: isCompleted ?? this.isCompleted,
    );
  }

  toggleCompleted() {
    this.isCompleted = !this.isCompleted;
  }

  @override
  String toString() {
    return 'Task{id: $id, description: $description, isCompleted: $isCompleted}';
  }
}
