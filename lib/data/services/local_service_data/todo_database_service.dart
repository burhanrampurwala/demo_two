import 'package:demo_two/data/model/todo_model.dart';
import 'package:isar/isar.dart';

import '../todo_service.dart';

class TodoDatabaseService {
  Future<void> addTodo({
    required int id,
    required String title,
    final bool? completed,
  }) async {
    final todo = Todo()
      ..isarId = id
      ..title = title
      ..completed = completed ?? false; // Default to false if not provided

    await DatabaseServices.isar
        .writeTxn(() => DatabaseServices.isar.todos.put(todo));
  }

  Future<void> deleteTodo(int id) async {
    await DatabaseServices.isar
        .writeTxn(() => DatabaseServices.isar.todos.delete(id));
  }

  Future<List<Todo>> getTodos() async {
    List<Todo> todoList = await DatabaseServices.isar.todos.where().findAll();
    return todoList;
  }

  Future<void> updateTodo({
    required int id,
    required String title,
    final bool? completed,
  }) async {
    final existingTask = await DatabaseServices.isar.todos.get(id);
    if (existingTask != null) {
      final todo = Todo()
        ..isarId = id
        ..title = title
        ..completed = completed ?? false; // Default to false if not provided
      await DatabaseServices.isar
          .writeTxn(() => DatabaseServices.isar.todos.put(todo));
    }
  }
}
