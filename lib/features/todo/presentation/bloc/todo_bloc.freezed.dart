// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TodoEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(Todo todo) addTodo,
    required TResult Function(String id) archiveTodo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(Todo todo)? addTodo,
    TResult? Function(String id)? archiveTodo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(Todo todo)? addTodo,
    TResult Function(String id)? archiveTodo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TodoInit value) init,
    required TResult Function(_AddTodoPressed value) addTodo,
    required TResult Function(_ArchiveTodoPressed value) archiveTodo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TodoInit value)? init,
    TResult? Function(_AddTodoPressed value)? addTodo,
    TResult? Function(_ArchiveTodoPressed value)? archiveTodo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TodoInit value)? init,
    TResult Function(_AddTodoPressed value)? addTodo,
    TResult Function(_ArchiveTodoPressed value)? archiveTodo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoEventCopyWith<$Res> {
  factory $TodoEventCopyWith(TodoEvent value, $Res Function(TodoEvent) then) =
      _$TodoEventCopyWithImpl<$Res, TodoEvent>;
}

/// @nodoc
class _$TodoEventCopyWithImpl<$Res, $Val extends TodoEvent>
    implements $TodoEventCopyWith<$Res> {
  _$TodoEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_TodoInitCopyWith<$Res> {
  factory _$$_TodoInitCopyWith(
          _$_TodoInit value, $Res Function(_$_TodoInit) then) =
      __$$_TodoInitCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_TodoInitCopyWithImpl<$Res>
    extends _$TodoEventCopyWithImpl<$Res, _$_TodoInit>
    implements _$$_TodoInitCopyWith<$Res> {
  __$$_TodoInitCopyWithImpl(
      _$_TodoInit _value, $Res Function(_$_TodoInit) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_TodoInit implements _TodoInit {
  const _$_TodoInit();

  @override
  String toString() {
    return 'TodoEvent.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_TodoInit);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(Todo todo) addTodo,
    required TResult Function(String id) archiveTodo,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(Todo todo)? addTodo,
    TResult? Function(String id)? archiveTodo,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(Todo todo)? addTodo,
    TResult Function(String id)? archiveTodo,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TodoInit value) init,
    required TResult Function(_AddTodoPressed value) addTodo,
    required TResult Function(_ArchiveTodoPressed value) archiveTodo,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TodoInit value)? init,
    TResult? Function(_AddTodoPressed value)? addTodo,
    TResult? Function(_ArchiveTodoPressed value)? archiveTodo,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TodoInit value)? init,
    TResult Function(_AddTodoPressed value)? addTodo,
    TResult Function(_ArchiveTodoPressed value)? archiveTodo,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _TodoInit implements TodoEvent {
  const factory _TodoInit() = _$_TodoInit;
}

/// @nodoc
abstract class _$$_AddTodoPressedCopyWith<$Res> {
  factory _$$_AddTodoPressedCopyWith(
          _$_AddTodoPressed value, $Res Function(_$_AddTodoPressed) then) =
      __$$_AddTodoPressedCopyWithImpl<$Res>;
  @useResult
  $Res call({Todo todo});
}

/// @nodoc
class __$$_AddTodoPressedCopyWithImpl<$Res>
    extends _$TodoEventCopyWithImpl<$Res, _$_AddTodoPressed>
    implements _$$_AddTodoPressedCopyWith<$Res> {
  __$$_AddTodoPressedCopyWithImpl(
      _$_AddTodoPressed _value, $Res Function(_$_AddTodoPressed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todo = null,
  }) {
    return _then(_$_AddTodoPressed(
      null == todo
          ? _value.todo
          : todo // ignore: cast_nullable_to_non_nullable
              as Todo,
    ));
  }
}

/// @nodoc

class _$_AddTodoPressed implements _AddTodoPressed {
  const _$_AddTodoPressed(this.todo);

  @override
  final Todo todo;

  @override
  String toString() {
    return 'TodoEvent.addTodo(todo: $todo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddTodoPressed &&
            (identical(other.todo, todo) || other.todo == todo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, todo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddTodoPressedCopyWith<_$_AddTodoPressed> get copyWith =>
      __$$_AddTodoPressedCopyWithImpl<_$_AddTodoPressed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(Todo todo) addTodo,
    required TResult Function(String id) archiveTodo,
  }) {
    return addTodo(todo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(Todo todo)? addTodo,
    TResult? Function(String id)? archiveTodo,
  }) {
    return addTodo?.call(todo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(Todo todo)? addTodo,
    TResult Function(String id)? archiveTodo,
    required TResult orElse(),
  }) {
    if (addTodo != null) {
      return addTodo(todo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TodoInit value) init,
    required TResult Function(_AddTodoPressed value) addTodo,
    required TResult Function(_ArchiveTodoPressed value) archiveTodo,
  }) {
    return addTodo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TodoInit value)? init,
    TResult? Function(_AddTodoPressed value)? addTodo,
    TResult? Function(_ArchiveTodoPressed value)? archiveTodo,
  }) {
    return addTodo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TodoInit value)? init,
    TResult Function(_AddTodoPressed value)? addTodo,
    TResult Function(_ArchiveTodoPressed value)? archiveTodo,
    required TResult orElse(),
  }) {
    if (addTodo != null) {
      return addTodo(this);
    }
    return orElse();
  }
}

abstract class _AddTodoPressed implements TodoEvent {
  const factory _AddTodoPressed(final Todo todo) = _$_AddTodoPressed;

  Todo get todo;
  @JsonKey(ignore: true)
  _$$_AddTodoPressedCopyWith<_$_AddTodoPressed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ArchiveTodoPressedCopyWith<$Res> {
  factory _$$_ArchiveTodoPressedCopyWith(_$_ArchiveTodoPressed value,
          $Res Function(_$_ArchiveTodoPressed) then) =
      __$$_ArchiveTodoPressedCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$_ArchiveTodoPressedCopyWithImpl<$Res>
    extends _$TodoEventCopyWithImpl<$Res, _$_ArchiveTodoPressed>
    implements _$$_ArchiveTodoPressedCopyWith<$Res> {
  __$$_ArchiveTodoPressedCopyWithImpl(
      _$_ArchiveTodoPressed _value, $Res Function(_$_ArchiveTodoPressed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_ArchiveTodoPressed(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ArchiveTodoPressed implements _ArchiveTodoPressed {
  const _$_ArchiveTodoPressed(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'TodoEvent.archiveTodo(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ArchiveTodoPressed &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ArchiveTodoPressedCopyWith<_$_ArchiveTodoPressed> get copyWith =>
      __$$_ArchiveTodoPressedCopyWithImpl<_$_ArchiveTodoPressed>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(Todo todo) addTodo,
    required TResult Function(String id) archiveTodo,
  }) {
    return archiveTodo(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(Todo todo)? addTodo,
    TResult? Function(String id)? archiveTodo,
  }) {
    return archiveTodo?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(Todo todo)? addTodo,
    TResult Function(String id)? archiveTodo,
    required TResult orElse(),
  }) {
    if (archiveTodo != null) {
      return archiveTodo(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TodoInit value) init,
    required TResult Function(_AddTodoPressed value) addTodo,
    required TResult Function(_ArchiveTodoPressed value) archiveTodo,
  }) {
    return archiveTodo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TodoInit value)? init,
    TResult? Function(_AddTodoPressed value)? addTodo,
    TResult? Function(_ArchiveTodoPressed value)? archiveTodo,
  }) {
    return archiveTodo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TodoInit value)? init,
    TResult Function(_AddTodoPressed value)? addTodo,
    TResult Function(_ArchiveTodoPressed value)? archiveTodo,
    required TResult orElse(),
  }) {
    if (archiveTodo != null) {
      return archiveTodo(this);
    }
    return orElse();
  }
}

abstract class _ArchiveTodoPressed implements TodoEvent {
  const factory _ArchiveTodoPressed(final String id) = _$_ArchiveTodoPressed;

  String get id;
  @JsonKey(ignore: true)
  _$$_ArchiveTodoPressedCopyWith<_$_ArchiveTodoPressed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TodoState {
  List<Todo> get todo => throw _privateConstructorUsedError;
  Option<Either<Failure, List<Todo>>> get todoOrFailureOption =>
      throw _privateConstructorUsedError;
  Option<Either<Failure, Unit>> get successOrFailureOption =>
      throw _privateConstructorUsedError;
  TodoStatus get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TodoStateCopyWith<TodoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoStateCopyWith<$Res> {
  factory $TodoStateCopyWith(TodoState value, $Res Function(TodoState) then) =
      _$TodoStateCopyWithImpl<$Res, TodoState>;
  @useResult
  $Res call(
      {List<Todo> todo,
      Option<Either<Failure, List<Todo>>> todoOrFailureOption,
      Option<Either<Failure, Unit>> successOrFailureOption,
      TodoStatus status});
}

/// @nodoc
class _$TodoStateCopyWithImpl<$Res, $Val extends TodoState>
    implements $TodoStateCopyWith<$Res> {
  _$TodoStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todo = null,
    Object? todoOrFailureOption = null,
    Object? successOrFailureOption = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      todo: null == todo
          ? _value.todo
          : todo // ignore: cast_nullable_to_non_nullable
              as List<Todo>,
      todoOrFailureOption: null == todoOrFailureOption
          ? _value.todoOrFailureOption
          : todoOrFailureOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, List<Todo>>>,
      successOrFailureOption: null == successOrFailureOption
          ? _value.successOrFailureOption
          : successOrFailureOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, Unit>>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TodoStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TodoStateCopyWith<$Res> implements $TodoStateCopyWith<$Res> {
  factory _$$_TodoStateCopyWith(
          _$_TodoState value, $Res Function(_$_TodoState) then) =
      __$$_TodoStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Todo> todo,
      Option<Either<Failure, List<Todo>>> todoOrFailureOption,
      Option<Either<Failure, Unit>> successOrFailureOption,
      TodoStatus status});
}

/// @nodoc
class __$$_TodoStateCopyWithImpl<$Res>
    extends _$TodoStateCopyWithImpl<$Res, _$_TodoState>
    implements _$$_TodoStateCopyWith<$Res> {
  __$$_TodoStateCopyWithImpl(
      _$_TodoState _value, $Res Function(_$_TodoState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todo = null,
    Object? todoOrFailureOption = null,
    Object? successOrFailureOption = null,
    Object? status = null,
  }) {
    return _then(_$_TodoState(
      todo: null == todo
          ? _value._todo
          : todo // ignore: cast_nullable_to_non_nullable
              as List<Todo>,
      todoOrFailureOption: null == todoOrFailureOption
          ? _value.todoOrFailureOption
          : todoOrFailureOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, List<Todo>>>,
      successOrFailureOption: null == successOrFailureOption
          ? _value.successOrFailureOption
          : successOrFailureOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, Unit>>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TodoStatus,
    ));
  }
}

/// @nodoc

class _$_TodoState implements _TodoState {
  const _$_TodoState(
      {required final List<Todo> todo,
      required this.todoOrFailureOption,
      required this.successOrFailureOption,
      required this.status})
      : _todo = todo;

  final List<Todo> _todo;
  @override
  List<Todo> get todo {
    if (_todo is EqualUnmodifiableListView) return _todo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_todo);
  }

  @override
  final Option<Either<Failure, List<Todo>>> todoOrFailureOption;
  @override
  final Option<Either<Failure, Unit>> successOrFailureOption;
  @override
  final TodoStatus status;

  @override
  String toString() {
    return 'TodoState(todo: $todo, todoOrFailureOption: $todoOrFailureOption, successOrFailureOption: $successOrFailureOption, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TodoState &&
            const DeepCollectionEquality().equals(other._todo, _todo) &&
            (identical(other.todoOrFailureOption, todoOrFailureOption) ||
                other.todoOrFailureOption == todoOrFailureOption) &&
            (identical(other.successOrFailureOption, successOrFailureOption) ||
                other.successOrFailureOption == successOrFailureOption) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_todo),
      todoOrFailureOption,
      successOrFailureOption,
      status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TodoStateCopyWith<_$_TodoState> get copyWith =>
      __$$_TodoStateCopyWithImpl<_$_TodoState>(this, _$identity);
}

abstract class _TodoState implements TodoState {
  const factory _TodoState(
      {required final List<Todo> todo,
      required final Option<Either<Failure, List<Todo>>> todoOrFailureOption,
      required final Option<Either<Failure, Unit>> successOrFailureOption,
      required final TodoStatus status}) = _$_TodoState;

  @override
  List<Todo> get todo;
  @override
  Option<Either<Failure, List<Todo>>> get todoOrFailureOption;
  @override
  Option<Either<Failure, Unit>> get successOrFailureOption;
  @override
  TodoStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$_TodoStateCopyWith<_$_TodoState> get copyWith =>
      throw _privateConstructorUsedError;
}
