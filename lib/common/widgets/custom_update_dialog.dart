import 'package:demo_two/common/resources/app_strings.dart';
import 'package:demo_two/data/model/todo_model.dart';
import 'package:demo_two/presentation/to_do_list/bloc/todo_list_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future<void> showUpdateDialog(TodoListBloc todoBloc, BuildContext context,
    TextEditingController titleController) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return BlocBuilder<TodoListBloc, TodoListState>(
        bloc: todoBloc,
        builder: (context, state) {
          return AlertDialog(
            title: const Text(AppStrings.task_title_text),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  TextFormField(
                    controller: titleController,
                    decoration: const InputDecoration(
                        hintText: AppStrings.task_textfield_hint_text),
                  ),
                ],
              ),
            ),
            actions: <Widget>[
              TextButton(
                child: const Text(AppStrings.task_dialog_cancel_text),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              TextButton(
                child: const Text(AppStrings.task_dialog_update_text),
                onPressed: () {
                  final String input = titleController.text.trim();
                  todoBloc.add(TriggerUpdateTask(
                      todoTask: Todo(
                        id: state.todoList.last.id,
                    title: input,
                  )));
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    },
  );
}
