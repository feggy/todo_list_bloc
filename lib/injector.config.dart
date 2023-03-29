// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:todo_list/features/todo/data/datasources/local/hive/todo_hive.dart'
    as _i3;
import 'package:todo_list/features/todo/data/datasources/local/todo_local_data_source.dart'
    as _i4;
import 'package:todo_list/features/todo/data/repositories/todo_repository_impl.dart'
    as _i6;
import 'package:todo_list/features/todo/domain/repositories/todo_repository.dart'
    as _i5;
import 'package:todo_list/features/todo/domain/usecases/add_todo.dart' as _i7;
import 'package:todo_list/features/todo/domain/usecases/archive_todo.dart'
    as _i8;
import 'package:todo_list/features/todo/domain/usecases/get_todo.dart' as _i9;
import 'package:todo_list/features/todo/presentation/bloc/todo_bloc.dart'
    as _i10;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i3.TodoHive>(() => _i3.TodoHiveImpl());
    gh.lazySingleton<_i4.TodoLocalDataSource>(
        () => _i4.TodoLocalDataSourceImpl(gh<_i3.TodoHive>()));
    gh.lazySingleton<_i5.TodoRepository>(
        () => _i6.TodoRepositoryImpl(gh<_i4.TodoLocalDataSource>()));
    gh.factory<_i7.AddTodo>(() => _i7.AddTodo(gh<_i5.TodoRepository>()));
    gh.factory<_i8.ArchiveTodo>(
        () => _i8.ArchiveTodo(gh<_i5.TodoRepository>()));
    gh.factory<_i9.GetTodo>(() => _i9.GetTodo(gh<_i5.TodoRepository>()));
    gh.factory<_i10.TodoBloc>(() => _i10.TodoBloc(
          gh<_i9.GetTodo>(),
          gh<_i7.AddTodo>(),
          gh<_i8.ArchiveTodo>(),
        ));
    return this;
  }
}
