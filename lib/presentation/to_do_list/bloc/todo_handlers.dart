import 'package:demo_two/presentation/to_do_list/bloc/todo_list_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/model/todo_model.dart';

void handleAddTaskEvent({
  required TriggerAddTask event,
  required Emitter<TodoListState> emit,
  required TodoListState state,
}) async {
  emit(state.copyWith(isLoading: true));
  List<Todo> tempList = [];
  tempList.addAll(state.todoList);
  tempList.add(event.todoTask);
  emit(state.copyWith(isLoading: false, todoList: tempList));
}

void handleDeleteTaskEvent({
  required TriggerDeleteTask event,
  required Emitter<TodoListState> emit,
  required TodoListState state,
}) async {
  emit(state.copyWith(isLoading: true));
  final updatedList =
      state.todoList.where((task) => task.id != event.taskId).toList();
  emit(state.copyWith(isLoading: false, todoList: updatedList));
}

void handleLoadTaskEvent({
  required TriggerLoadTask event,
  required Emitter<TodoListState> emit,
  required TodoListState state,
}) async {
  emit(state.copyWith(isLoading: true));
  List<Todo> tempList = [];
  tempList.addAll(state.todoList);
  emit(state.copyWith(isLoading: false, todoList: tempList));
}
