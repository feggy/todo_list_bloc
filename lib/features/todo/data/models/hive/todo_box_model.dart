import 'package:equatable/equatable.dart';
import 'package:hive/hive.dart';
import 'package:todo_list/features/todo/domain/entities/todo.dart';

part 'todo_box_model.g.dart';

@HiveType(typeId: 0)
class TodoBoxModel extends Equatable {
  const TodoBoxModel({
    required this.id,
    required this.text,
    required this.isArchive,
  });

  factory TodoBoxModel.fromDomain(Todo form) => TodoBoxModel(
        id: form.id,
        text: form.text,
        isArchive: form.isArchive,
      );

  @HiveField(0)
  final String id;
  @HiveField(1)
  final String text;
  @HiveField(2)
  final bool isArchive;

  @override
  List<Object?> get props => [id, text, isArchive];
}

extension TodoBoxModelX on TodoBoxModel {
  Todo toDomain() => Todo(
        id: id,
        text: text,
        isArchive: isArchive,
      );
}
