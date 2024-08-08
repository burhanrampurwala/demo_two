import 'package:demo_two/common/resources/style.dart';
import 'package:demo_two/presentation/to_do_list/bloc/todo_list_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../common/widgets/custom_alert_dialog.dart';
import '../../../data/model/todo_model.dart';
import '../../../imports/common.dart';

class TodoListView extends StatefulWidget {
  const TodoListView({super.key});

  @override
  State<TodoListView> createState() => _TodoListViewState();
}

class _TodoListViewState extends State<TodoListView> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<TodoListBloc>(
      create: (context) => TodoListBloc(),
      child: BlocConsumer<TodoListBloc, TodoListState>(
        listener: (context, state) {},
        builder: (context, state) {
            return  Scaffold(
              backgroundColor: AppColor.colorScaffold,
              appBar: AppBar(
                title: Text(
                  AppStrings.todo_title,
                  style: Style.appBarTitleStyle(color: AppColor.colorPrimary),
                ),
                centerTitle: true,
                actions: [
                  IconButton(
                    onPressed: () async {
                      await showMyDialog(context, state.titleController);
                      BlocProvider.of<TodoListBloc>(context).add(const TriggerLoadTask());
                    },
                    icon: const Icon(Icons.add, size: 30),
                  ),
                ],
              ),
              body: Column(
                children: [
                  TextFormField(
                    controller: state.titleController,
                    decoration: const InputDecoration(
                        hintText: AppStrings.task_textfield_hint_text),
                  ),
                  TextButton(
                    child: const Text('Submit'),
                    onPressed: () {
                      final String input = state.titleController.text.trim();
                      print('User input: $input');
                      BlocProvider.of<TodoListBloc>(context).add(TriggerAddTask(
                          todoTask: Todo(
                            id: 0 + 1,
                            title: input,
                          )));
                      print('Event: $input');
                    },
                  ),
                  state.isLoading ? const Center(child: CircularProgressIndicator()) :
                  Expanded(
                    child: ListView.builder(
                      itemCount: state.todoList.length,
                      itemBuilder: (context, index) {
                        return Container(
                          color: Colors.purple.shade50,
                          child: Text(state.todoList[index].title, style: Style.appBarTitleStyle(color: Colors.purple),),
                        );
                      },
                    ),
                  ),
                ],
              ),
            );
          }
      ),
    );
  }

  // _buildBody(TodoListState state) {
  //   return
  // }
}
