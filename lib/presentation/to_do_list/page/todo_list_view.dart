import 'package:demo_two/common/dimensions/other_constants.dart';
import 'package:demo_two/common/resources/style.dart';
import 'package:demo_two/data/model/todo_model.dart';
import 'package:demo_two/presentation/to_do_list/bloc/todo_list_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../common/dimensions/paddings.dart';
import '../../../common/widgets/custom_alert_dialog.dart';
import '../../../common/widgets/custom_card.dart';
import '../../../common/widgets/custom_update_dialog.dart';
import '../../../di/di.dart';
import '../../../imports/common.dart';

class TodoListView extends StatefulWidget {
  const TodoListView({super.key});

  @override
  State<TodoListView> createState() => _TodoListViewState();
}

class _TodoListViewState extends State<TodoListView> {
  final TodoListBloc _todoBloc = instance<TodoListBloc>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _todoBloc..add(const TriggerLoadTask()),
      child: BlocConsumer<TodoListBloc, TodoListState>(
          listener: (context, state) {},
          builder: (context, state) {
            return _buildBody(state);
          }),
    );
  }

  _buildBody(TodoListState state) {
    return Scaffold(
      backgroundColor: AppColor.colorScaffold,
      appBar: AppBar(
        title: Text(
          AppStrings.todo_title,
          style: Style.appBarTitleStyle(color: AppColor.colorPrimary),
        ),
        centerTitle: true,
        elevation: cardElevation,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await showMyDialog(_todoBloc, context, state.titleController);
        },
        child: const Icon(
          Icons.add,
          size: 30,
          color: Colors.black,
        ),
      ),
      body: Column(
        children: [
          state.isLoading
              ? const Center(child: CircularProgressIndicator())
              : Expanded(
                  child: ListView.builder(
                    itemCount: state.todoList.length,
                    itemBuilder: (context, index) {
                      final todo = state.todoList[index];
                      return GestureDetector(
                        onTap: () async {
                          final titleController =
                              TextEditingController(text: todo.title);
                          await showUpdateDialog(
                              _todoBloc, context, titleController, index);
                        },
                        child: CustomCard(todoBloc: _todoBloc, todo: todo),
                      );
                    },
                  ),
                ),
        ],
      ),
    );
  }
}
