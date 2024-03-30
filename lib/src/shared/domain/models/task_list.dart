import 'package:dark_todo_app/src/shared/domain/models/task.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class TaskList {
  @Id()
  int id = 0;

  String title;
  String color;
  bool pinned;

  @Backlink()
  final tasks = ToMany<Task>();

  TaskList(this.title, this.color, {int id = 0, this.pinned = false});

  TaskList copyWith({int? id, String? title, String? color, bool? pinned}) {
    return TaskList(
      id: id ?? this.id,
      pinned: pinned ?? this.pinned,
      title ?? this.title,
      color ?? this.title,
    );
  }

  @override
  String toString() {
    return 'TaskList{id: $id, title: $title, color: $color, pinned: $pinned}';
  }
}
