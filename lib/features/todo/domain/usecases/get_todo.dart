import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import 'package:todo_list/core/domain/failures/failure.dart';
import 'package:todo_list/core/domain/usecases/use_case.dart';
import 'package:todo_list/features/todo/domain/entities/todo.dart';
import 'package:todo_list/features/todo/domain/repositories/todo_repository.dart';

@injectable
class GetTodo extends UseCase<List<Todo>, NoParams> {
  const GetTodo(this._repository);

  final TodoRepository _repository;

  @override
  Future<Either<Failure, List<Todo>>> call(NoParams params) =>
      _repository.getTodo();
}
