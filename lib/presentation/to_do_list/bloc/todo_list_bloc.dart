import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:demo_two/presentation/to_do_list/bloc/todo_handlers.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/model/todo_model.dart';

part 'todo_list_event.dart';

part 'todo_list_state.dart';

part 'todo_list_bloc.freezed.dart';

class TodoListBloc extends Bloc<TodoListEvent, TodoListState> {
  TodoListBloc() : super(TodoListState.initial()) {
    on<TriggerAddTask>(_onTriggerAddTask);
    on<TriggerDeleteTask>(_onTriggerDeleteTask);
    on<TriggerLoadTask>(_onTriggerLoadTask);
    on<TriggerUpdateTask>(_onTriggerUpdateTask);
  }

  FutureOr<void> _onTriggerAddTask(
      TriggerAddTask event, Emitter<TodoListState> emit) async {
    await handleAddTaskEvent(emit: emit, event: event, state: state);
  }

  FutureOr<void> _onTriggerDeleteTask(
      TriggerDeleteTask event, Emitter<TodoListState> emit)async {
    await handleDeleteTaskEvent(emit: emit, event: event, state: state);
  }

  FutureOr<void> _onTriggerLoadTask(
      TriggerLoadTask event, Emitter<TodoListState> emit)async {
    await handleLoadTaskEvent(emit: emit, event: event, state: state);
  }

  FutureOr<void> _onTriggerUpdateTask(
      TriggerUpdateTask event, Emitter<TodoListState> emit) async{
    await handleUpdateTaskEvent(emit: emit, event: event, state: state);
  }
}
