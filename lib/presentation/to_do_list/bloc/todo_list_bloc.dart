import 'dart:async';

import 'package:bloc/bloc.dart';
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
    final state = this.state;
    debugPrint("5115151");

    emit(state.copyWith(isLoading: true));

    List<Todo> tempList = [];
    tempList.addAll(state.todoList);
    tempList.add(event.todoTask);
    debugPrint("length is ${tempList.length}");
    emit(state.copyWith(isLoading: false, todoList: tempList));
  }

  FutureOr<void> _onTriggerDeleteTask(
      TriggerDeleteTask event, Emitter<TodoListState> emit) {}

  FutureOr<void> _onTriggerLoadTask(
      TriggerLoadTask event, Emitter<TodoListState> emit) {
    debugPrint("list is ${state.todoList}");
    emit(state.copyWith(isLoading: true));
    List<Todo> tempList = [];
    tempList.addAll(state.todoList);
    emit(state.copyWith(isLoading: false, todoList: tempList));
  }
}
