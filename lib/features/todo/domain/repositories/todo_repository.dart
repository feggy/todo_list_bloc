import 'package:dartz/dartz.dart';
import 'package:todo_list/core/domain/failures/failure.dart';
import 'package:todo_list/features/todo/domain/entities/todo.dart';

abstract class TodoRepository {
  Future<Either<Failure, List<Todo>>> getTodo();
  Future<Either<Failure, Unit>> addTodo(Todo todo);
  Future<Either<Failure, Unit>> archiveTodo(String id);
}
