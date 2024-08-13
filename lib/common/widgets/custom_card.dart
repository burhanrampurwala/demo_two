import 'package:demo_two/common/resources/style.dart';
import 'package:demo_two/data/model/todo_model.dart';
import 'package:flutter/material.dart';

import '../../presentation/to_do_list/bloc/todo_list_bloc.dart';
import '../dimensions/paddings.dart';

class CustomCard extends StatefulWidget {
  final TodoListBloc todoBloc;
  final Todo todo;

  const CustomCard({super.key, required this.todoBloc, required this.todo});

  @override
  State<CustomCard> createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(
          vertical: cardVerticalPadding, horizontal: cardHorizontalPadding),
      child: ListTile(
        contentPadding: EdgeInsets.all(listItemSpaceInBetween),
        title: Text(widget.todo.title, style: Style.titleStyle(color: Colors.black),),
        trailing: IconButton(
          icon: const Icon(
            Icons.delete,
            color: Colors.red,
            size: 30,
          ),
          onPressed: () {
            widget.todoBloc.add(TriggerDeleteTask(taskId: widget.todo.isarId));
          },
        ),
      ),
    );
  }
}
