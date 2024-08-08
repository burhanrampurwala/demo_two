// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TodoListState {
  TextEditingController get titleController =>
      throw _privateConstructorUsedError;
  TextEditingController get descriptionController =>
      throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  List<Todo> get todoList => throw _privateConstructorUsedError;
  bool get isChecked => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TodoListStateCopyWith<TodoListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoListStateCopyWith<$Res> {
  factory $TodoListStateCopyWith(
          TodoListState value, $Res Function(TodoListState) then) =
      _$TodoListStateCopyWithImpl<$Res, TodoListState>;
  @useResult
  $Res call(
      {TextEditingController titleController,
      TextEditingController descriptionController,
      bool isLoading,
      List<Todo> todoList,
      bool isChecked});
}

/// @nodoc
class _$TodoListStateCopyWithImpl<$Res, $Val extends TodoListState>
    implements $TodoListStateCopyWith<$Res> {
  _$TodoListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? titleController = null,
    Object? descriptionController = null,
    Object? isLoading = null,
    Object? todoList = null,
    Object? isChecked = null,
  }) {
    return _then(_value.copyWith(
      titleController: null == titleController
          ? _value.titleController
          : titleController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      descriptionController: null == descriptionController
          ? _value.descriptionController
          : descriptionController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      todoList: null == todoList
          ? _value.todoList
          : todoList // ignore: cast_nullable_to_non_nullable
              as List<Todo>,
      isChecked: null == isChecked
          ? _value.isChecked
          : isChecked // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TodoListStateImplCopyWith<$Res>
    implements $TodoListStateCopyWith<$Res> {
  factory _$$TodoListStateImplCopyWith(
          _$TodoListStateImpl value, $Res Function(_$TodoListStateImpl) then) =
      __$$TodoListStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TextEditingController titleController,
      TextEditingController descriptionController,
      bool isLoading,
      List<Todo> todoList,
      bool isChecked});
}

/// @nodoc
class __$$TodoListStateImplCopyWithImpl<$Res>
    extends _$TodoListStateCopyWithImpl<$Res, _$TodoListStateImpl>
    implements _$$TodoListStateImplCopyWith<$Res> {
  __$$TodoListStateImplCopyWithImpl(
      _$TodoListStateImpl _value, $Res Function(_$TodoListStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? titleController = null,
    Object? descriptionController = null,
    Object? isLoading = null,
    Object? todoList = null,
    Object? isChecked = null,
  }) {
    return _then(_$TodoListStateImpl(
      titleController: null == titleController
          ? _value.titleController
          : titleController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      descriptionController: null == descriptionController
          ? _value.descriptionController
          : descriptionController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      todoList: null == todoList
          ? _value._todoList
          : todoList // ignore: cast_nullable_to_non_nullable
              as List<Todo>,
      isChecked: null == isChecked
          ? _value.isChecked
          : isChecked // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$TodoListStateImpl implements _TodoListState {
  const _$TodoListStateImpl(
      {required this.titleController,
      required this.descriptionController,
      required this.isLoading,
      required final List<Todo> todoList,
      required this.isChecked})
      : _todoList = todoList;

  @override
  final TextEditingController titleController;
  @override
  final TextEditingController descriptionController;
  @override
  final bool isLoading;
  final List<Todo> _todoList;
  @override
  List<Todo> get todoList {
    if (_todoList is EqualUnmodifiableListView) return _todoList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_todoList);
  }

  @override
  final bool isChecked;

  @override
  String toString() {
    return 'TodoListState(titleController: $titleController, descriptionController: $descriptionController, isLoading: $isLoading, todoList: $todoList, isChecked: $isChecked)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodoListStateImpl &&
            (identical(other.titleController, titleController) ||
                other.titleController == titleController) &&
            (identical(other.descriptionController, descriptionController) ||
                other.descriptionController == descriptionController) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(other._todoList, _todoList) &&
            (identical(other.isChecked, isChecked) ||
                other.isChecked == isChecked));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      titleController,
      descriptionController,
      isLoading,
      const DeepCollectionEquality().hash(_todoList),
      isChecked);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TodoListStateImplCopyWith<_$TodoListStateImpl> get copyWith =>
      __$$TodoListStateImplCopyWithImpl<_$TodoListStateImpl>(this, _$identity);
}

abstract class _TodoListState implements TodoListState {
  const factory _TodoListState(
      {required final TextEditingController titleController,
      required final TextEditingController descriptionController,
      required final bool isLoading,
      required final List<Todo> todoList,
      required final bool isChecked}) = _$TodoListStateImpl;

  @override
  TextEditingController get titleController;
  @override
  TextEditingController get descriptionController;
  @override
  bool get isLoading;
  @override
  List<Todo> get todoList;
  @override
  bool get isChecked;
  @override
  @JsonKey(ignore: true)
  _$$TodoListStateImplCopyWith<_$TodoListStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
