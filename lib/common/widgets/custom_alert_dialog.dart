import 'package:demo_two/common/resources/app_strings.dart';
import 'package:demo_two/data/model/todo_model.dart';
import 'package:demo_two/presentation/to_do_list/bloc/todo_list_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future<void> showMyDialog(
    BuildContext context, TextEditingController titleController) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false,
    // Set to true if you want to dismiss dialog by tapping outside
    builder: (BuildContext context) {
      return BlocProvider(
        create: (context) => TodoListBloc(),
        child: BlocBuilder<TodoListBloc, TodoListState>(
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
                  child: const Text('Cancel'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
                TextButton(
                  child: const Text('Submit'),
                  onPressed: () {
                    final String input = titleController.text.trim();
                    print('User input: $input');
                    BlocProvider.of<TodoListBloc>(context).add(TriggerAddTask(
                        todoTask: Todo(
                      id: 0 + 1,
                      title: input,
                    )));
                    print('Event: $input');
                    Navigator.of(context).pop();
                  },
                ),
              ],
            );
          },
        ),
      );
    },
  );
}
