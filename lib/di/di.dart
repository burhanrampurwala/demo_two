

import 'package:demo_two/presentation/to_do_list/bloc/todo_list_bloc.dart';
import 'package:get_it/get_it.dart';

import '../data/services/local_service_data/todo_database_service.dart';
import '../data/services/todo_service.dart';

final instance = GetIt.instance;

Future<void> initTodoModule() async {
  DatabaseServices databaseServices = DatabaseServices();
  instance.registerLazySingleton<DatabaseServices>(() => databaseServices);
  instance.registerLazySingleton<TodoDatabaseService>(
          () => TodoDatabaseService());
  if (!GetIt.I.isRegistered<TodoListBloc>()) {
    instance.registerFactory<TodoListBloc>(() => TodoListBloc());
  }
}