import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:todo_list/core/domain/failures/failure.dart';

abstract class UseCase<ReturnValue, Params extends Equatable> {
  const UseCase();
  Future<Either<Failure, ReturnValue>> call(Params params);
}

class NoParams extends Equatable {
  @override
  List<Object?> get props => [];
}
