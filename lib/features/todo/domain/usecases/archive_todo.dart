import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

import 'package:todo_list/core/domain/failures/failure.dart';
import 'package:todo_list/core/domain/usecases/use_case.dart';
import 'package:todo_list/features/todo/domain/repositories/todo_repository.dart';

@injectable
class ArchiveTodo extends UseCase<Unit, ArchiveTodoParams> {
  ArchiveTodo(this._repository);

  final TodoRepository _repository;

  @override
  Future<Either<Failure, Unit>> call(ArchiveTodoParams params) =>
      _repository.archiveTodo(params.id);
}

class ArchiveTodoParams extends Equatable {
  const ArchiveTodoParams({required this.id});

  final String id;

  @override
  List<Object?> get props => [id];
}
