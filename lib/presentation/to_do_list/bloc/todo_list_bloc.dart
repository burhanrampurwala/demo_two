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
  }

  FutureOr<void> _onTriggerAddTask(
      TriggerAddTask event, Emitter<TodoListState> emit) {
    handleAddTaskEvent(emit: emit, event: event, state: state);
  }

  FutureOr<void> _onTriggerDeleteTask(
      TriggerDeleteTask event, Emitter<TodoListState> emit) {
    handleDeleteTaskEvent(emit: emit, event: event, state: state);
  }

  FutureOr<void> _onTriggerLoadTask(
      TriggerLoadTask event, Emitter<TodoListState> emit) {
    handleLoadTaskEvent(emit: emit, event: event, state: state);
  }
}
