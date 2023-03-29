import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:todo_list/core/domain/failures/failure.dart';
import 'package:todo_list/core/domain/usecases/use_case.dart';
import 'package:todo_list/core/extensions/dartz_extensions.dart';
import 'package:todo_list/features/todo/domain/entities/todo.dart';
import 'package:todo_list/features/todo/domain/usecases/add_todo.dart';
import 'package:todo_list/features/todo/domain/usecases/archive_todo.dart';
import 'package:todo_list/features/todo/domain/usecases/get_todo.dart';

part 'todo_event.dart';
part 'todo_state.dart';
part 'todo_bloc.freezed.dart';

@injectable
class TodoBloc extends Bloc<TodoEvent, TodoState> {
  TodoBloc(
    this._getTodo,
    this._addTodo,
    this._archiveTodo,
  ) : super(TodoState.initial()) {
    on<_TodoInit>(_onInit);
    on<_AddTodoPressed>(_onAddTodo);
    on<_ArchiveTodoPressed>(_onArchiveTodo);
  }

  final GetTodo _getTodo;
  final AddTodo _addTodo;
  final ArchiveTodo _archiveTodo;

  FutureOr<void> _onInit(
    _TodoInit event,
    Emitter<TodoState> emit,
  ) async {
    final previousState = state.status;

    emit(state.copyWith(status: TodoStatus.fetching));

    final result = await _getTodo(NoParams());
    if (result.isRight()) {
      emit(state.copyWith(todo: result.getRight()!));
    }

    emit(state.copyWith(todoOrFailureOption: optionOf(result)));

    emit(
      state.copyWith(
        todoOrFailureOption: none(),
        status: previousState,
      ),
    );
  }

  FutureOr<void> _onAddTodo(
    _AddTodoPressed event,
    Emitter<TodoState> emit,
  ) async {
    final result = await _addTodo(AddTodoParams(todo: event.todo));
    emit(state.copyWith(successOrFailureOption: optionOf(result)));
    emit(state.copyWith(successOrFailureOption: none()));

    final todo = await _getTodo(NoParams());
    if (todo.isRight()) {
      emit(state.copyWith(todo: todo.getRight()!));
    }
  }

  FutureOr<void> _onArchiveTodo(
    _ArchiveTodoPressed event,
    Emitter<TodoState> emit,
  ) async {
    final result = await _archiveTodo(ArchiveTodoParams(id: event.id));
    emit(state.copyWith(successOrFailureOption: optionOf(result)));
    emit(state.copyWith(successOrFailureOption: none()));

    final todo = await _getTodo(NoParams());
    if (todo.isRight()) {
      emit(state.copyWith(todo: todo.getRight()!));
    }
  }
}
