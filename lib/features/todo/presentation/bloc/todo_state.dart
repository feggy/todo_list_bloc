part of 'todo_bloc.dart';

@freezed
class TodoState with _$TodoState {
  const factory TodoState({
    required List<Todo> todo,
    required Option<Either<Failure, List<Todo>>> todoOrFailureOption,
    required Option<Either<Failure, Unit>> successOrFailureOption,
    required TodoStatus status,
  }) = _TodoState;
  factory TodoState.initial() => TodoState(
        todo: [],
        todoOrFailureOption: none(),
        successOrFailureOption: none(),
        status: TodoStatus.init,
      );
}

enum TodoStatus { init, fetching, added }
