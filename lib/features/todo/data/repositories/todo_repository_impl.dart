import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:todo_list/core/domain/failures/failure.dart';
import 'package:todo_list/features/todo/data/datasources/local/todo_local_data_source.dart';
import 'package:todo_list/features/todo/data/models/hive/todo_box_model.dart';
import 'package:todo_list/features/todo/domain/entities/todo.dart';
import 'package:todo_list/features/todo/domain/repositories/todo_repository.dart';

@LazySingleton(as: TodoRepository)
class TodoRepositoryImpl implements TodoRepository {
  TodoRepositoryImpl(this._todoLocalDataSource);

  final TodoLocalDataSource _todoLocalDataSource;

  @override
  Future<Either<Failure, Unit>> addTodo(Todo todo) =>
      _todoLocalDataSource.addTodo(TodoBoxModel.fromDomain(todo));

  @override
  Future<Either<Failure, Unit>> archiveTodo(String id) =>
      _todoLocalDataSource.archiveTodo(id);

  @override
  Future<Either<Failure, List<Todo>>> getTodo() => _todoLocalDataSource
      .fetchTodos()
      .then((value) => value.map((r) => r.map((e) => e.toDomain()).toList()));
}
