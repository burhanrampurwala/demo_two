import 'package:demo_two/presentation/to_do_list/bloc/todo_list_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/model/todo_model.dart';
import '../../../data/services/local_service_data/todo_database_service.dart';
import '../../../di/di.dart';

TodoDatabaseService localStorage = instance<TodoDatabaseService>();

Future<void> handleAddTaskEvent({
  required TriggerAddTask event,
  required Emitter<TodoListState> emit,
  required TodoListState state,
}) async {
  emit(state.copyWith(isLoading: true));
  await localStorage.addTodo(
    id: event.todoTask.isarId,
    title: event.todoTask.title,
    completed: event.todoTask.completed,
  );
  List<Todo> updatedList = List.from(state.todoList)..add(event.todoTask);
  emit(state.copyWith(isLoading: false, todoList: updatedList));
}

Future<void> handleDeleteTaskEvent({
  required TriggerDeleteTask event,
  required Emitter<TodoListState> emit,
  required TodoListState state,
}) async {
  emit(state.copyWith(isLoading: true));
  await localStorage.deleteTodo(event.taskId);
  final updatedList = await localStorage.getTodos();
  emit(state.copyWith(isLoading: false, todoList: updatedList));
}

Future<void> handleLoadTaskEvent({
  required TriggerLoadTask event,
  required Emitter<TodoListState> emit,
  required TodoListState state,
}) async {
  emit(state.copyWith(isLoading: true));
  List<Todo> loadedTasks = await localStorage.getTodos();
  emit(state.copyWith(isLoading: false, todoList: loadedTasks));
}

Future<void> handleUpdateTaskEvent({
  required Emitter<TodoListState> emit,
  required TriggerUpdateTask event,
  required TodoListState state,
}) async {
  emit(state.copyWith(isLoading: true));
  await localStorage.updateTodo(event.todoTask);
  List<Todo> updatedTasks = await localStorage.getTodos();
  emit(state.copyWith(todoList: updatedTasks));
}
