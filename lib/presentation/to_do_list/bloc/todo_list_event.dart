part of 'todo_list_bloc.dart';

@immutable
sealed class TodoListEvent extends Equatable {
  const TodoListEvent();

  @override
  List<Object> get props => [];
}

class TriggerLoadTask extends TodoListEvent {
  final List<Todo> tasks;

  const TriggerLoadTask({this.tasks = const <Todo>[]});

  @override
  List<Object> get props => [tasks];
}

class TriggerAddTask extends TodoListEvent {
  final Todo todoTask;

  const TriggerAddTask({required this.todoTask});

  @override
  List<Object> get props => [todoTask];
}

class TriggerDeleteTask extends TodoListEvent {
  final int taskId;

  const TriggerDeleteTask({required this.taskId});

  @override
  List<Object> get props => [taskId];
}

class TriggerUpdateTask extends TodoListEvent {
  final Todo todoTask;

  const TriggerUpdateTask({required this.todoTask});

  @override
  List<Object> get props => [todoTask];
}
