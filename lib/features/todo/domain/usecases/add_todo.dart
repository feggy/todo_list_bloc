import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

import 'package:todo_list/core/domain/failures/failure.dart';
import 'package:todo_list/core/domain/usecases/use_case.dart';
import 'package:todo_list/features/todo/domain/entities/todo.dart';
import 'package:todo_list/features/todo/domain/repositories/todo_repository.dart';

@injectable
class AddTodo extends UseCase<Unit, AddTodoParams> {
  AddTodo(this._repository);

  final TodoRepository _repository;

  @override
  Future<Either<Failure, Unit>> call(AddTodoParams params) =>
      _repository.addTodo(params.todo);
}

class AddTodoParams extends Equatable {
  const AddTodoParams({
    required this.todo,
  });

  final Todo todo;

  @override
  List<Object?> get props => [todo];
}
