import 'package:dark_todo_app/src/shared/domain/models/task.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class TaskList {
  @Id()
  int id = 0;

  String title;
  String color;

  @Backlink()
  final tasks = ToMany<Task>();

  TaskList(this.title, this.color, {int id = 0});

  TaskList copyWith({int? id, String? title, String? color}) {
    return TaskList(
      id: id ?? this.id,
      title ?? this.title,
      color ?? this.title,
    );
  }
}
