

import 'package:demo_two/presentation/to_do_list/bloc/todo_list_bloc.dart';
import 'package:get_it/get_it.dart';

final instance = GetIt.instance;

Future<void> initTodoModule() async {
  if (!GetIt.I.isRegistered<TodoListBloc>()) {
    instance.registerFactory<TodoListBloc>(() => TodoListBloc());
  }
} //For splash screen