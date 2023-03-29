part of 'todo_bloc.dart';

@freezed
class TodoEvent with _$TodoEvent {
  const factory TodoEvent.init() = _TodoInit;
  const factory TodoEvent.addTodo(Todo todo) = _AddTodoPressed;
  const factory TodoEvent.archiveTodo(String id) = _ArchiveTodoPressed;
}
