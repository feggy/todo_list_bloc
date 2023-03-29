import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import 'package:todo_list/core/domain/failures/failure.dart';
import 'package:todo_list/core/utils/utils.dart';
import 'package:todo_list/features/todo/data/datasources/local/hive/todo_hive.dart';
import 'package:todo_list/features/todo/data/models/hive/todo_box_model.dart';

abstract class TodoLocalDataSource {
  Future<Either<Failure, List<TodoBoxModel>>> fetchTodos();
  Future<Either<Failure, Unit>> addTodo(TodoBoxModel todo);
  Future<Either<Failure, Unit>> archiveTodo(String id);
}

@LazySingleton(as: TodoLocalDataSource)
class TodoLocalDataSourceImpl implements TodoLocalDataSource {
  TodoLocalDataSourceImpl(this._hive);

  final TodoHive _hive;

  @override
  Future<Either<Failure, List<TodoBoxModel>>> fetchTodos() async => safeCall(
        tryCallback: () async {
          final data = await _hive.fetchTodos();

          if (data.isNotEmpty) {
            return right(data);
          } else {
            return left(
              const Failure.localFailure(message: 'Belum ada todo tersimpan'),
            );
          }
        },
        exceptionCallBack: () => left(
          const Failure.localFailure(message: 'Terjadi kesalahan...'),
        ),
      );

  @override
  Future<Either<Failure, Unit>> addTodo(TodoBoxModel todo) async => safeCall(
        tryCallback: () async {
          await _hive.addTodo(todo);
          return right(unit);
        },
        exceptionCallBack: () => left(
          const Failure.localFailure(message: 'Terjadi kesalahan...'),
        ),
      );

  @override
  Future<Either<Failure, Unit>> archiveTodo(String id) async => safeCall(
        tryCallback: () async {
          await _hive.archiveTodo(id);
          return right(unit);
        },
        exceptionCallBack: () => left(
          const Failure.localFailure(message: 'Terjadi kesalahan...'),
        ),
      );
}
