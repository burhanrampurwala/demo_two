

import 'package:isar/isar.dart';

part 'todo_model.g.dart';

@collection
class Todo {
  Id isarId = Isar.autoIncrement;
  final int id;
  final String title;
  final bool completed;

  Todo({
    required this.id,
    required this.title,
    this.completed = false,
  });
}
