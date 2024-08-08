part of 'todo_list_bloc.dart';

@freezed
class TodoListState with _$TodoListState {
  const factory TodoListState({
    required TextEditingController titleController,
    required TextEditingController descriptionController,
    required bool isLoading,
    required List<Todo> todoList,
    required bool isChecked,
  }) = _TodoListState;

  factory TodoListState.initial() => TodoListState(
        titleController: TextEditingController(),
        descriptionController: TextEditingController(),
        isLoading: false,
        todoList: [],
        isChecked: false,
      );
}
